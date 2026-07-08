open Batteries
open String 

type var = string
type name = string
type predname = string
type cname = string

type lnp_name = 
	| String of string
	| SuffixedString of string * evaluatedExpression
and evaluatedExpression =
  | Var of var
  | Num of int 
  | Name of cname 
  | Constructor of cname * evaluatedExpression list
  | ValuesOf of evaluatedExpression 
  | ValueArgs of evaluatedExpression 
  | OfType of evaluatedExpression 
  | IsVar of evaluatedExpression (* not in use *)
  | IsSingleValue of evaluatedExpression 
  | TargetV of evaluatedExpression 
  | TargetOp of evaluatedExpression 
  | ContainsSub of evaluatedExpression 
  | EvaluationOrder of evaluatedExpression
  | ContextualArgs of evaluatedExpression
  | GetArgs of evaluatedExpression * evaluatedExpression
  | IsEliminationForm of evaluatedExpression
  | IsErrorHandler of evaluatedExpression
  | GetArgType of evaluatedExpression * evaluatedExpression
  | InList of evaluatedExpression * evaluatedExpression
  | EqualTerm of evaluatedExpression * evaluatedExpression  
  | IS of evaluatedExpression * evaluatedExpression
  | OrTerm of evaluatedExpression * evaluatedExpression  
  | AndTerm of evaluatedExpression * evaluatedExpression  
  | NotTerm of evaluatedExpression 
  (* for map state *)
  | IsOperation of evaluatedExpression
  | Constructed of evaluatedExpression
  | Range of evaluatedExpression
  | Arity of evaluatedExpression
  | WhichArg of evaluatedExpression * evaluatedExpression
  | WhichArgTest of evaluatedExpression * evaluatedExpression
  | Dot of evaluatedExpression * var * predname  
  | LNPRule of (formula list) * formula
  | LNPFormula of formula * int (* int is the index of the formula in a premise list, or -1  *)
  | ExtendState of evaluatedExpression * evaluatedExpression
  | States of bool (* boolean says whether you are retrieving only 'weak' states, not strong updates. *)
  | StateEnv of evaluatedExpression
  | MapEnv of evaluatedExpression
  | LabelOf of evaluatedExpression * evaluatedExpression
  | RefOf of evaluatedExpression * evaluatedExpression
  | Prime of evaluatedExpression * (evaluatedExpression option) * bool (* option says the term not to prime if ONLY is inserted. boolean says that EXCEPT has been inserted rather than ONLY. *)
  | MapNewEntry of evaluatedExpression * evaluatedExpression (* the new name in .lnp syntax is newStateEnv *)
  | Can of evaluatedExpression
  | FindVar of evaluatedExpression * evaluatedExpression
  | FindVarTest of evaluatedExpression * evaluatedExpression
  | MakeCons of evaluatedExpression * evaluatedExpression * evaluatedExpression * evaluatedExpression
  | InductiveArgs of evaluatedExpression * evaluatedExpression
  | IsLabel of evaluatedExpression
  | Irrelevant of evaluatedExpression
  
and formula =
  | Top
  | Bottom
  | True
  | Formula of lnp_name * predname * evaluatedExpression list
  | Forall of var * formula
  | Exists of var * formula
  | ForallVars of evaluatedExpression * formula
  | ExistsVars of evaluatedExpression * formula
  | EqualFormula of evaluatedExpression * evaluatedExpression
  | OrMacro of var * evaluatedExpression * formula
  | AndMacro of var * evaluatedExpression * formula
  | ImplyMacro of var * evaluatedExpression * formula
  | Imply of formula * formula
  | And of formula * formula
  | Or of formula * formula
  | ForallStar of formula
  | ExistsStar of formula
  (* for map state *)
  | FormulaTHM of lnp_name * lnp_name * evaluatedExpression list


type proof =
  | Intros
  | Search
  | NoOp
  | Skip
  | DoNotGenerateThisProof
  | Undo
  | Unfold
  | Case of lnp_name * lnp_name 
  | CaseStar of lnp_name * lnp_name * proof (* not in use *)
  | Induction of lnp_name * lnp_name 
  | InductionStar of lnp_name * lnp_name * proof (* not in use *)
  | Apply of lnp_name * lnp_name * lnp_name list * ((var * evaluatedExpression) list) option
  | Backchain of lnp_name 
  | If of evaluatedExpression * proof * proof
  | ForEachProof of var * evaluatedExpression * proof
  | Seq of proof * proof
  (* for map state *)
  | Split
  | Witness of evaluatedExpression 
  | Assert of formula
  | Clear of lnp_name 
  | Let of name * evaluatedExpression * lnp_name * lnp_name * proof 
  | NameConvention of evaluatedExpression * lnp_name * lnp_name 


type schema = ForEachThm of ((var * evaluatedExpression) option) * lnp_name * formula * proof 

let schema_getIteration schema = match schema with ForEachThm(iterationOption, lnp_name, formula, proof) -> iterationOption
let schema_getTheoremName schema = match schema with ForEachThm(iterationOption, lnp_name, formula, proof) -> lnp_name 
let schema_getTheorem schema = match schema with ForEachThm(iterationOption, lnp_name, formula, proof) -> formula 
let schema_getProof schema = match schema with ForEachThm(iterationOption, lnp_name, formula, proof) -> proof 

let rec makeForall vars formula = match vars with
  | [] -> formula
  | (var::rest) -> Forall(var, makeForall rest formula)

let rec makeExists vars formula = match vars with
  | [] -> formula
  | (var::rest) -> Exists(var, makeExists rest formula)

let rec makeOr formulas = match formulas with
  | [] -> Bottom
  | (f::rest) -> if rest = [] then f else Or(f, makeOr rest)

let rec makeImply formulas = match formulas with
  | [] -> Top
  | (f::rest) -> if rest = [] then f else Imply(f, makeImply rest)

let rec makeAnd formulas = match formulas with
  | [] -> Top
  | (f::rest) -> if rest = [] then f else And(f, makeAnd rest)

let rec makeSeq proofs = match proofs with
  | [] -> NoOp
  | (proof::rest) -> if rest = [] then proof else Seq(proof, makeSeq rest)

let my_starts_with s1 s2 = if String.length s1 <= String.length s2 then (String.sub s2 0 (String.length s1)) = s1 else false

let prime_a_variable exp = match exp with | Var(name) -> Var(name ^ "'")

(* this is term_isVar up to label constructor *)
let term_isVar exp = match exp with | Var(_) -> true | Constructor(labelpred, [Var(_)]) when my_starts_with "label" labelpred -> true | _ -> false 
(* this is term_isVar that is not up to label constructor 
let term_isVar exp = match exp with | Var(_) -> true | _ -> false
*)



let term_isSubstitution exp = match exp with
	  	| Constructor(cname, evaluatedExpressions) -> cname = "substitution"
		| _ -> false

let term_getConstructorName exp = match exp with
  | Constructor(cname, evaluatedExpressions) -> cname
  | _ -> raise(Failure("term_getConstructorName: " ^ dump exp))

let term_getArguments exp = match exp with
	| Constructor(cname, evaluatedExpressions) -> evaluatedExpressions
    | _ -> raise(Failure("term_getArguments: " ^ dump exp))

let rec term_getVars exp = match exp with
  | Var(name) -> [name]
  | Constructor(cname, evaluatedExpressions) -> List.concat (List.map term_getVars evaluatedExpressions)

let rec var_getVarName exp = match exp with
  | Var(name) -> name
  | _ ->  raise(Failure("var_getVarName: " ^ dump exp))


let term_getNthArg (Constructor(cname, ts)) n = try List.nth ts n with _ -> raise(Failure("term_getNthArg, nth failed, args are: " ^ dump (Constructor(cname, ts)) ^ " and " ^ string_of_int n))

let rec term_constains_substitution t : bool = match t with 
	| Constructor(cname,ts) -> if cname = "substitution" then true else List.exists term_constains_substitution ts
	| _ -> false


let term_list_mem exp listOfexps : bool = match exp with Var(_) -> List.mem exp listOfexps | _ -> List.mem (term_getConstructorName exp) (List.map term_getConstructorName listOfexps)
	(* if term_isVar exp then List.mem exp listOfexps else List.mem (term_getConstructorName exp) (List.map term_getConstructorName listOfexps) *)
let term_list_mem_upToNumbers exp listOfexps : bool = 
	let foundItem = List.filter (fun t -> term_list_mem exp [t]) listOfexps in (* returns the term in listOfexps whose constructor name is equal to that of exp *)
	if foundItem = [] then false else let foundItem = List.hd foundItem in 
	(* We also need to match E1 with R1.  *)
	let equalupToNumbers (Var(var1),Var(var2)) : bool = 
			(my_starts_with var1 "R" || my_starts_with var1 (String.make 1 (String.get var2 0)) || 
			 my_starts_with var2 "R" || my_starts_with var2 (String.make 1 (String.get var1 0))) in  
		List.for_all equalupToNumbers (List.combine (term_getArguments exp) (term_getArguments foundItem))

let numberToNumTerm n = Num n 

	(* map_names_formulae_in_theorem formula is the list (name, theorem) *)
let rec map_names_formulae_in_theorem formula = match formula with
	| Formula(String s, predname, ts) -> if s = "_" then [] else [(s, Formula(String s, predname, ts))]
	| Imply(formula1, formula2) -> map_names_formulae_in_theorem formula1 @ map_names_formulae_in_theorem formula2
	| Forall(var, formula) -> map_names_formulae_in_theorem formula
	| Exists(var, formula) -> map_names_formulae_in_theorem formula
	| FormulaTHM(String s, lnp_name, ts) -> if s = "_" then [] else [(s, FormulaTHM(String s, lnp_name, ts))]
	| _ -> []

let rec lnp_find_indexes_upTo l (el : evaluatedExpression) upTocname indexes n = if l = [] then indexes else 
	match List.hd l with 
	| Constructor(cname, [oneArg]) when my_starts_with upTocname cname && oneArg = el -> lnp_find_indexes_upTo (List.tl l) el upTocname (n :: indexes) (n+1)
	| exp -> if exp = el then lnp_find_indexes_upTo (List.tl l) el upTocname (n :: indexes) (n+1) else lnp_find_indexes_upTo (List.tl l) el upTocname indexes (n+1)  

	(*
	
	if List.hd l = el 
		|| List.hd l = Constructor(cname, [el]) then lnp_find_indexes_upTo (List.tl l) el cname (n :: indexes) (n+1) else lnp_find_indexes_upTo (List.tl l) el cname indexes (n+1)  
		
	*)

let removeDuplicates(list') =
  let rec removeDuplicatesHelper(list) = match List.rev(list) with
  |[]->[]
  |head::tail -> if List.mem head tail then
                  removeDuplicatesHelper(List.rev(tail))
                 else [head]@removeDuplicatesHelper(List.rev(tail))
  in List.rev(removeDuplicatesHelper(list'));;
  
let list_difference a b = let notpresent x = not (List.mem x b) in List.filter notpresent a 
  
let rec formula_getVars formula : var list = removeDuplicates begin match formula with 
	| Top -> []
	| Bottom -> []
	| Formula(lnp_name, predname, ts) -> List.concat (List.map term_getVars ts)
	| Forall(var2, formula) -> list_difference (formula_getVars formula) [var2]
	| Exists(var2, formula) -> list_difference (formula_getVars formula) [var2]
	| EqualFormula(t1, t2) ->  term_getVars t1 @ term_getVars t2
	| Imply(formula1, formula2) ->  formula_getVars formula1 @ formula_getVars formula2
	| And(formula1, formula2) -> formula_getVars formula1 @ formula_getVars formula2
	| Or(formula1, formula2) -> formula_getVars formula1 @ formula_getVars formula2
	| FormulaTHM(lnp_name, lnp_predname, ts) -> List.concat (List.map term_getVars ts)
	| _ -> raise(Failure("formula_getVars, pattern match failied: " ^ dump formula))
end

let rec formula_refine_quantifications (f : formula) (varsAccumulated : var list) : formula = match f with 
	| Top -> f
	| Bottom -> f
	| Formula(lnp_name, predname, ts) -> f
	| FormulaTHM(lnp_name, lnp_predname, ts) -> f
	| EqualFormula(t1, t2) ->  f
	| Forall(var2, formula) -> if List.mem var2 (formula_getVars formula) && (not (List.mem var2 varsAccumulated)) then Forall(var2, formula_refine_quantifications formula (var2 :: varsAccumulated)) else formula_refine_quantifications formula varsAccumulated
	| Exists(var2, formula) -> if List.mem var2 (formula_getVars formula) && (not (List.mem var2 varsAccumulated)) then Exists(var2, formula_refine_quantifications formula (var2 :: varsAccumulated)) else formula_refine_quantifications formula varsAccumulated
	| Imply(formula1, formula2) ->  Imply(formula_refine_quantifications formula1 varsAccumulated, formula_refine_quantifications formula2 varsAccumulated)
	| And(formula1, formula2) -> And(formula_refine_quantifications formula1 varsAccumulated, formula_refine_quantifications formula2 varsAccumulated)
	| Or(formula1, formula2) -> Or(formula_refine_quantifications formula1 varsAccumulated, formula_refine_quantifications formula2 varsAccumulated)

let true_formula_getArguments (Formula(lnp_name, predname, ts)) = ts
let true_formula_getPredname (Formula(lnp_name, predname, ts)) = predname

let lnp_getOnlyPremisesOfPredname (premises : evaluatedExpression list) (predname : string) : evaluatedExpression list = 
	if predname = "all" then premises else 
	if predname = "statemod" then List.filter (fun (LNPFormula(f,_)) -> (my_starts_with "update" (true_formula_getPredname f) || (true_formula_getPredname f = "extend"))) premises 
	else List.filter (fun (LNPFormula(f,_)) -> true_formula_getPredname f = predname) premises 

let is_digit = function '0' .. '9' -> true | _ -> false

(* trim numbers also removes primes ' and '' etc. *)
let trim_numbers var = String.trim (String.map (fun c -> if is_digit c || c = '\'' then ' ' else c) var)  (* (fun c -> if is_digit c then ' ' else c)  *)
let var_trim_numbers (Var var) = Var (trim_numbers var)
let lnp_name_adjust_name (String var) = String (trim_numbers (uncapitalize_ascii var))
let lnp_name_getname (String var) : string = var

let first_character str = get str 0
let last_character str = get str ((String.length str) - 1)

let input_is_about_state_string (envVarname : string) (str : string) = (first_character str) = (last_character envVarname) 
let input_is_about_state (envVarname : string) (e : evaluatedExpression) = match e with | Var(var) -> input_is_about_state_string envVarname var | _ -> false

let getEnvMetaVar m = "env" ^ m
let getEnvMetaVars ms = List.map getEnvMetaVar ms

let getEnvMetaVarCapitalized m = "Env" ^ m
let getEnvMetaVarsCapitalized ms = List.map getEnvMetaVarCapitalized ms

