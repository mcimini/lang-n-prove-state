open Batteries
open Unix
open Filename
open Language
open Lnp
open Pretty_printer
open Pretty_printerLan
open Abella
open Compile
(*
open LanguageDef
open Expr_evaluator
open Theorem_evaluator
open Macro_expander
*)
open Lexing

let get_positions lexbuf = let pos = lexbuf.lex_curr_p in pos.pos_fname ^ ":" ^ string_of_int pos.pos_lnum  ^ ":" ^ string_of_int (pos.pos_cnum - pos.pos_bol + 1)

(* Repo of Languages and setting the repo to target (in repoDir) *)

let repoOfFunctional = "repo/"

let repoOfProcessCalculi = "repoProcess/"

let repoOfState = "repoMapState/"

let repoDir = repoOfState


let languagesFromRepo = 
	let contents = Array.to_list (Sys.readdir repoDir) in
	(* let contents = List.rev_map (Filename.concat dir) contents in *)
	let files =
	  List.fold_left (fun (files) f ->
	       match (stat (repoDir ^ f)).st_kind with
		   | S_REG -> if String.ends_with f ".lan" then files @ [f] else files (* Regular file *)
	   	   | _ -> files)
		   [] contents in 
		   files

(* Groups of LNP proofs and setting the group to run (in repoOfSchemas) *)

let emptyGroup = []
let typeSoundnessFunctional = 	[
	"./canonical.lnp"
	;
	"./progress-op.lnp"
	;
	"./progress.lnp" 
	;
	"./preservation.lnp" 
	]

let typeSoundnessState = [
"canonical-state.lnp"
;
"./progress-op-state.lnp"
;
"./progress-state.lnp" 
;
"./uniqueness-of-lookupMap.lnp"
;
"./find-type-in-env.lnp"
;
"./typeOf-update.lnp"
;
"./typeOf-weakening.lnp"
;
"./typeOf-add.lnp"
;
"./type-state-envs-weakening.lnp"
;
(* "preservation-state.lnp"  *)
]

let repoOfSchemas = typeSoundnessState

(* Definitions to generate. You have to provide the body of the function generate_definitions *)

let progressesDefinition = "Define progresses : term -> prop by\n\t progresses E := {value E} ;\n\t progresses E := {error E} ;\n\t progresses E := exists E', {step E E'}.\n\n"
let errorTypesAllTheorem lan = 
	let proofWhenThereAreNoErrors = "Theorem Error-types-all: forall E T1 T2, {typeOf E T1} -> {error E} -> {typeOf E T2}.\n intros Hyp1 Error. case Error. " in 
	if language_grammarLookupByCategory lan "Error" = [] then proofWhenThereAreNoErrors ^ "\n\n" else proofWhenThereAreNoErrors ^ "case Hyp1. search. \n\n"

let bisimDefinition = "CoDefine bisim : proc -> proc -> prop by\n\t
bisim P Q := (forall a P', {step P a P'} -> exists Q', {step Q a Q'} /\\ bisim P' Q')\n\t\t\t
             /\\\n\t\t\t
              (forall a Q', {step Q a Q'} -> exists P', {step P a P'} /\\ bisim P' Q').\n"


let generate_definitions thm_file lan = 
	(* the following two for Type Soundness of Functional Languages
	output_string thm_file (progressesDefinition); 
	output_string thm_file (errorTypesAllTheorem lan)
	*)

	(* the following for Bisimulation 
	output_string thm_file bisimDefinition
	*)
	
	(* generates no definitions *)
	""

let parseOneLanguage filename =
  (* Parse the language, lan is the parsed language *)
  let dir = "./" ^ repoDir in 
  let input = (open_in (dir ^ filename)) in
  let filebuf = Lexing.from_channel input in
  let unusedVar = print_endline ("Reading the language: " ^ filename) in 
  let lan = try (ParserLan.fileLan LexerLan.token filebuf) with
						    | LexerLan.Error msg -> raise(Failure("Lexer error: " ^ get_positions filebuf ^ " with message: " ^ msg))
						    | ParserLan.Error -> raise(Failure("Parser error: " ^ get_positions filebuf)) in
   let unusedVar = IO.close_in input; in 
      lan

let parseTheSchema filename = 
   (* Parse the theorem&proof schema, schema is the var of the parsed schema *)
   let inputSchema = (open_in filename) in
   let filebuf = Lexing.from_channel inputSchema in
   let schema = try (Parser.file Lexer.token filebuf) with
 						    | Lexer.Error msg -> raise(Failure("Lexer error: " ^ get_positions filebuf ^ " with message: " ^ msg))
 						    | Parser.Error -> raise(Failure("Parser error: " ^ get_positions filebuf)) in

   let unusedVar = IO.close_in inputSchema; in 
       schema

let parseAllLanguages _ = 
	let _ = List.map parseOneLanguage languagesFromRepo in 
	print_endline "Successfully parsed all languages."

let applySchemaToOneLang schema filenameLan = 
	let lan = parseOneLanguage filenameLan in 
		compile lan schema

let applySchemaToAllLanguages filenameSchema = 	
	let schema = parseTheSchema filenameSchema in 
		List.map (applySchemaToOneLang schema) languagesFromRepo 

let applyAllSchemasToOneLanguages_to_file filenameLan = 	
	let schemas = List.map parseTheSchema repoOfSchemas in 
	let lan = parseOneLanguage filenameLan in
	let result = List.concat (List.map (compile lan) schemas) in (* concat, so result is a list of theorem&proof *)
	let nameOfLanguage = Filename.chop_extension filenameLan in 
	(* generate Abella proof .thm *)
	let thm_file = open_out ("./generated/" ^ nameOfLanguage ^ ".thm") in
(*	temporarily removed for debug.
	output_string thm_file ("Specification \"" ^ nameOfLanguage ^ "\". \n\n");  *)
	generate_definitions thm_file lan;
	List.map (output_string thm_file) (List.map abella_thrAndProof result); 
    close_out thm_file;

	(* generate language definition .mod  *)
	let mod_file = open_out ("./generated/" ^ nameOfLanguage ^ ".mod") in
	output_string mod_file ("module " ^ nameOfLanguage ^ ".\n\n"); 
	
	output_string mod_file (language_prettyPrintMapFunctions  lan); 

	output_string mod_file (language_prettyPrintRules lan); 
    close_out mod_file;
		
    print_endline ("Proofs generated in ./generated/" ^ nameOfLanguage ^ ".thm");;
	
let () = List.hd (List.map applyAllSchemasToOneLanguages_to_file languagesFromRepo);;

(*	if you need command line args, here is an example. 

let () = match Array.to_list Sys.argv with 
		| [oneArg] -> print_endline ("Command line error: Lang-SQL needs the name of a folder, example: ./lnsql example_queries");
		| [oneArg ; twoArg] -> 
			let folder : string = Sys.argv.(1) in 
			List.hd (List.map (applyAllQueriesToOneLanguages_to_file folder) (languagesFromRepo folder));
		| otherwise -> print_endline ("Command line error: Too many arguments to Lang-SQL");

*)
