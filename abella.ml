open Batteries
open List
open Option
open Lnp
open Pretty_printer

let no_environment = false

let rec abella_evalExp t = match t with 
	| Var(var) -> var
	| Name(cname) -> cname
	| Constructor(cname, ts) -> let args = (String.concat " " (List.map abella_evalExp ts)) in if cname = "" then args else "(" ^ cname ^ if ts = [] then ")" else " " ^ args ^ ")"
	| EqualTerm(t1, t2) -> abella_evalExp t1 ^ " = " ^ abella_evalExp t2
	| Num(n) -> "UNRECOGNIZED: Integer not inserted as string in a term"
	| ValuesOf(t) -> "UNRECOGNIZED"
	| ValueArgs(t) -> "UNRECOGNIZED"
	| EvaluationOrder(t) -> "UNRECOGNIZED"
	| GetArgs(t1, t2) -> "UNRECOGNIZED"
	| IsEliminationForm(t) -> "UNRECOGNIZED"
	| IsErrorHandler(t) -> "UNRECOGNIZED"
	| GetArgType(t1, t2) -> "UNRECOGNIZED"
	| InList(t1, t2) -> "UNRECOGNIZED"
	| _ -> raise(Failure("abella_evalExp: " ^ dump t))

let abella_lnp_name lnp_name = match lnp_name with 
	| String s -> s
	| SuffixedString(s, t) -> "UNRECOGNIZED: Computed suffix for a name"

let abella_plainFormula (Formula(lnp_name, predname, ts)) = predname ^ " " ^ (String.concat " " (List.map abella_evalExp ts)) 
let wrapWithBrackets str =  "{" ^ str ^ "}"

let rec abella_formula formula = match formula with 
	| Top -> "true"
	| Bottom -> "false"
	(* Formula are not given a name in the theorem, formulae also come from .mod so they are around brackets { and }  *)
	| Formula(lnp_name, predname, ts) -> let ts = if predname = "typeOf" && no_environment then List.tl ts else ts in 
										 let plainFormula = abella_plainFormula (Formula(lnp_name, predname, ts)) in 
										 if predname = "progresses" then plainFormula else "{" ^ plainFormula ^ "}"
 	| FormulaTHM(lnp_name, String predname, ts) -> if my_starts_with "type" predname || my_starts_with " type" predname || my_starts_with "  type" predname then abella_plainFormula (Formula(lnp_name, predname, ts)) else abella_formula (Formula(lnp_name, predname, ts))
	| Forall(var, formula) -> "forall " ^ var ^ ", " ^ abella_formula formula
	| Exists(var, formula) -> "exists " ^ var ^ ", " ^ abella_formula formula
	| EqualFormula(t1, t2) -> abella_evalExp t1 ^ " = " ^ abella_evalExp t2
	| Imply(formula1, formula2) -> abella_formula formula1 ^ " -> " ^ abella_formula formula2
	| And(formula1, formula2) -> abella_formula formula1 ^ " /\\ " ^ abella_formula formula2
	| Or(formula1, formula2) -> abella_formula formula1 ^ " \\/ " ^ abella_formula formula2
	| ForallVars(t, formula) -> "UNRECOGNIZED: ForallVars in theorem"
	| ExistsVars(t, formula) -> "UNRECOGNIZED: ExistsVars in theorem"
	| OrMacro(var, t, formula) -> "UNRECOGNIZED: OrMacro in theorem"
	| AndMacro(var, t, formula) -> "UNRECOGNIZED: AndMacro in theorem"
	| ImplyMacro(var, t, formula) -> "UNRECOGNIZED: ImplyMacro in theorem"

let abella_equalities (equalitiesOpt : ((var * evaluatedExpression) list) option) = if is_none equalitiesOpt then "" else let equalities = get equalitiesOpt in 
	if equalities = [] then "" else 
	" with " ^ String.concat ", " (List.map (fun (var,t) -> var ^ " = " ^ abella_evalExp t) equalities)

let rec abella_proof names proof = match proof with 
	(* Intros Main Value. where names come from the theorem in names = list of strings  *)
	| Intros -> "intros " ^ (String.concat " " names) ^ ". "
	| Search -> "search" ^ ". "
	| NoOp -> "" (* NoOp are ignored *)
	| Skip -> "skip"  ^ ". "
	(* If the name of new hypothesis is not given, then just prints "case Hyp" rather than Hyp1: case Hyp2  *)
	| Case(lnp_name1, lnp_name2) -> 
		let plainInstr = "case " ^ abella_lnp_name lnp_name2 ^ "(keep). "in 
		if print_lnp_name lnp_name1 = "_" then plainInstr else abella_lnp_name lnp_name1 ^ ": " ^ plainInstr 
	(* If the name of new hypothesis is not given, then just prints "indiction on Hyp ..." rather than Hyp1: indiction on Hyp2 ... *)
	| Induction(lnp_name1, lnp_name2) -> 
		let hypothesisMiddle = if print_lnp_name lnp_name1 = "_" then "" else abella_lnp_name lnp_name1 ^ ": " in 
		  "IH0 : induction on 1. " ^ (abella_proof names Intros) ^ hypothesisMiddle ^ "case " ^ abella_lnp_name lnp_name2 ^ ". " (* to be computed. Always 1 for now. "induction on " ^ abella_lnp_name lnp_name2 in *)		
	(* If the name of new hypothesis is not given, then just prints "apply Hyp ..." rather than Hyp1: apply Hyp2 ... *)
	| Apply(lnp_name1, lnp_name2, lnp_names, equalities) -> 
		let hypotheses = if lnp_names = [] then "." else  " to " ^ (String.concat " " (List.map abella_lnp_name lnp_names)) ^ abella_equalities equalities ^ ". " in 
		let plainInstr = "apply " ^ abella_lnp_name lnp_name2 ^ hypotheses in 
		if print_lnp_name lnp_name1 = "_" then plainInstr else abella_lnp_name lnp_name1 ^ ": " ^ plainInstr 
	| Backchain(lnp_name) -> "backchain " ^ abella_lnp_name lnp_name ^ ". "
	| Seq(proof1, proof2) -> abella_proof names proof1 ^ " \n " ^ abella_proof names proof2
	| If(t, proof1, proof2) -> "UNRECOGNIZED: if-then-else in proof"
	| ForEachProof(var, t, proof) -> "UNRECOGNIZED: for-each iteration in proof"
	(* for map state *)
	| Split -> "split"  ^ ". "
	| Witness e -> "witness " ^ abella_evalExp e  ^ ". "
	| Assert (Formula(lnp_name, predname, ts)) -> abella_lnp_name lnp_name ^ " : assert " ^ abella_formula (Formula(lnp_name, predname, ts))  ^ ". "
	| Assert (FormulaTHM(lnp_name, predname, ts)) -> abella_lnp_name lnp_name ^ " : assert " ^ abella_formula (FormulaTHM(lnp_name, predname, ts))  ^ ". "
	| Clear(lnp_name) -> "clear " ^ abella_lnp_name lnp_name ^ ". "
	

	(* names_in_theorem returns a list of string, which are the names in the theorem 
	   map_names_formulae_in_theorem formula is the list (name, theorem)
		names_in_theorem just grabs the first component. 
	*)
let names_in_theorem formula = List.map fst (map_names_formulae_in_theorem formula)
	
let abella_thrAndProof (ForEachThm(iterationOption, lnp_name, formula, proof)) =
	if is_some iterationOption then "UNRECOGNIZED: for each theorem" else "Theorem " ^ abella_lnp_name lnp_name ^ ": " ^ abella_formula formula ^ ". \n" ^ abella_proof (names_in_theorem formula) proof ^ "\n\n\n"

	(*
		old induction code: 		
		let plainInstr = "induction on 1" ^ ". " in (* to be computed. Always 1 for now. "induction on " ^ abella_lnp_name lnp_name2 in *)
		if print_lnp_name lnp_name1 = "_" then plainInstr else abella_lnp_name lnp_name1 ^ ": " ^ plainInstr 

	*)