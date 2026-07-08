(* Description:  Generate type of definition for single of multiple mapped languages*)
(* Input : (ms : list string) representing the language meta variable map*)
(* Output : string Representing all needed typeof definitions*)

open Lnp
open Language

 
let define_typeOf_oneMap_extensible (ms : string list) (m : string) : string = 
(*	let _ = if List.length ms > 1 then print_string "found more than one state " else () in  *)
	"Define typeOf" ^ m ^ ": " ^ (String.concat " -> " (getEnvMetaVars ms)) ^ " -> map" ^ m ^ " -> prop by\n"
	^
    "typeOf" ^ m ^ " " ^ (String.concat " " (getEnvMetaVarsCapitalized ms)) ^ " Map" ^ m ^ " := forall l, forall t, \n"
	^
    "{lookupEnv" ^ m ^ " " ^ (getEnvMetaVarCapitalized m) ^ " l t} -> \n"
	^
    "exists e, {lookupMap" ^ m ^ " Map"  ^ m ^ " l e} /\\ {typeOf (nilEnvT) " ^ (String.concat " " (getEnvMetaVarsCapitalized ms)) ^ " e t}.\n\n"
	

let define_typeof_extensible (allmaps : string list) (ms : string list) : string = 
	String.concat "\n\n" (List.map (define_typeOf_oneMap_extensible allmaps) ms) ^ "\n\n"

let define_typeof_fixed (allmaps : string list) (ms : string list) : string = 
	if ms = [] then "" else 
	"Define typeOfR: envH -> envR -> mapR -> prop by
	    typeOfR EnvR EnvH MapR := forall t1 t2, 
	        {lookupEnvR EnvR r1 t1} -> 
	        {lookupEnvR EnvR r2 t2} -> 
	        exists e1 e2, {lookupMapR MapR r1 e1} /\\ {typeOf (nilEnvT) EnvH EnvR e1 t1} /\\ {lookupMapR MapR r2 e2} /\\ {typeOf (nilEnvT) EnvH EnvR e2 t2}.\n\n"

	
	(*
		let define_typeof (ms : string list) : string = 
  let rec define_typeof_helper l =
    match l with
    | [] -> ""
    | h :: t ->
        let ms_non_self = List.filter (fun x -> x <> h) ms in
        let typeof_H =
          List.map (fun t1 ->
            "Define typeOf" ^ h ^ ": env" ^ h ^ " -> map" ^ h ^ " -> prop by\n
            typeOf" ^ h ^ " Env" ^ h ^ " Map" ^ h ^ " := forall l, forall t,\n
            {lookupEnv" ^ h ^ " Env" ^ h ^ " l t} ->\n
              exists e, {lookupMap" ^ h ^ " Map" ^ h ^ " l e} /\\ {typeOf (nilEnvT) Env" ^ h ^ " (nilEnv" ^ t1 ^ ") e t}.\n"
          ) ms_non_self
        in
        String.concat "\n" typeof_H ^ "\n" ^ define_typeof_helper t
  in
  match ms with
  | [h] -> "Define typeOf" ^ h ^ ": env" ^ h ^ " -> map" ^ h ^ " -> prop by\n
    typeOf" ^ h ^ " Env" ^ h ^ " Map" ^ h ^ " := forall l, forall t,\n
    {lookupEnv" ^ h ^ " Env" ^ h ^ " l t} ->\n
    exists e, {lookupMap" ^ h ^ " Map" ^ h ^ " l e} /\\ {typeOf (nilEnvT) Env" ^ h ^ " e t}.\n"
  | _ -> define_typeof_helper ms

*)


  let uniqueness_of_lookupMap (m : string) : string = 
  "Theorem Uniqueness-of-lookupMap-" ^ m ^" : forall map L e1 e2, {lookupMap" ^ m ^" map L e1} -> {lookupMap" ^ m ^ " map L e2} -> e1 = e2.
skip.\n"
		
let find_type_in_env_byLookup (ms : string list) (m : string) : string = 
  "Theorem  Find-type-in-env-byLookup" ^ m ^ "  :
    forall " ^ (String.concat " " (getEnvMetaVarsCapitalized ms)) ^ " map L e T,
    {lookupMap" ^ m ^ " map L e} ->
    typeOf" ^ m ^ " " ^ (String.concat " " (getEnvMetaVarsCapitalized ms)) ^ " map ->
	{lookupEnv" ^ m ^ " Env" ^ m ^ " L T} ->
    {typeOf (nilEnvT) " ^ (String.concat " " (getEnvMetaVarsCapitalized ms)) ^ " e T}. \n" ^
	"intros Lookup typeOfH LookupEnv.
	case typeOfH(keep).
	apply H1 to LookupEnv.
	apply Uniqueness-of-lookupMap-" ^ m ^ " to Lookup H2.
	search.\n"

let find_type_in_env (ms : string list) (m : string) : string = 
    "Theorem  Find-type-in-env" ^ m ^ "  :
    forall " ^ (String.concat " " (getEnvMetaVarsCapitalized ms)) ^ " map L e T,
    {lookupMap" ^ m ^ " map L e} ->
    typeOf" ^ m ^ " " ^ (String.concat " " (getEnvMetaVarsCapitalized ms)) ^ " map ->
	{typeOf (nilEnvT) " ^ (String.concat " " (getEnvMetaVarsCapitalized ms)) ^ " (label" ^ m ^ " L) (ref" ^ m ^ " T)} -> 
    {typeOf (nilEnvT) " ^ (String.concat " " (getEnvMetaVarsCapitalized ms)) ^ " e T}. \n" ^
	"intros Lookup typeOfH TypeOfVar. 
	LookupEnv : case TypeOfVar. 
	case typeOfH(keep).
	apply H1 to LookupEnv.
	apply Uniqueness-of-lookupMap-" ^ m ^ " to Lookup H2.
	search.\n"
		
		(*				    
			if isLabel(p.label[none]) then LookupInserted_(p.label[none]) : case TypeOfVar_(p.label[none]) else LookupInserted_(p.label[none]) : apply TypeOfVar_(p.label[none]) to endif. 
			TypeOfVar_(p.output[none]) : apply Find-type-in-env_(p.state[none]) to Prem_(p) TypeOf_(p.state[none]) LookupInserted_(p.label[none]) with env=p.state[none].otherEnvs[none]..
			
			if isLabel(p.label[none]) then TypeOfVar_(p.output[none]) : apply Find-type-in-env_(p.state[none]) to Prem_(p) TypeOf_(p.state[none]) TypeOfVar_(p.label[none]) with env=p.state[none].otherEnvs[none]. 
									  else TypeOfVar_(p.output[none]) : apply Find-type-in-env-byLookup_(p.state[none]) to Prem_(p) TypeOf_(p.state[none]) TypeOfVar_(p.label[none]) with env=p.state[none].otherEnvs[none].. 
			
*)


let uniqueness_of_lookupEnv (m : string) : string =
  "Theorem Uniqueness-of-lookupEnv-" ^ m ^ " : forall env L e1 e2, {lookupEnv" ^ m ^ " env L e1} -> {lookupEnv" ^ m ^"  env L e2} -> e1 = e2.\n skip.\n"

(* NOTE need to scape \/ *)
let excluded_middle_labels (m : string) : string =
	let label = if m = "R" then "register" else "label" ^ m in 
  "Theorem excluded_middle_labels-" ^ m ^ " : forall (l1 :" ^ label ^ ") l2, (l1 = l2) \\/ (l1 = l2 -> false).\n skip.\n"

let update_implies_lookup (m : string) : string  = 
  "Theorem update_implies_lookup-" ^ m ^" :
  forall map l map' e,
  {updateMap" ^ m ^ " map l e map'} -> {lookupMap" ^ m ^ " map' l e}.\n
  induction on 1. intros Main.
  StUpdate : case Main.
  search.
  apply IH to StUpdate. search.\n"
  
let update_implies_lookupEnv (m : string) : string  = 
  "Theorem update_implies_lookupEnv-" ^ m ^ " : forall env l T env',
      {updateEnv" ^ m ^ " env l T env'} ->
      {lookupEnv" ^ m ^ " env' l T}.
	  induction on 1. intros Main.
	  StUpdate : case Main.
	  search.
	  apply IH to StUpdate. search.\n"



let inequality_contradiction (m : string) : string  = 
let label = if m = "R" then "register" else "label" ^ m in 
  "Theorem inequality_contradiction-" ^ m ^ " : \n
  forall (l : " ^ label ^ "),\n
    (l = l -> false) ->\n
    false.\n
  intros Contra. Equal : assert l = l. apply Contra to Equal.\n"


let lookup_when_inequal_labels (m : string) : string  = 
  "Theorem lookup_when_inequal_labels-" ^ m ^":\n
  forall l1 l2 map map' e1 e2\n,
    (l1 = l2 -> false) ->
    {updateMap" ^ m ^ " map l1 e1 map'}    ->
    {lookupMap" ^ m ^ " map l2 e2} ->
    {lookupMap" ^ m ^ " map' l2 e2}.\n
  induction on 2.\n
  intros Lanld STupdate STlookup.
  STupdate : case STupdate.
      case STlookup.
          apply inequality_contradiction-" ^ m ^ " to Lanld.
          search.

      STlookup : case STlookup.
          search.
          apply IH to Lanld STupdate STlookup. search.\n"

let lookup_when_inequal_labels_pre_env (m : string) : string  = 	  
	"Theorem lookup_when_inequal_labels-pre-Env" ^ m ^":\n
		  forall l1 l2 map map' e1 e2\n,
		    (l1 = l2 -> false) ->
		    {updateEnv" ^ m ^ " map l1 e1 map'}    ->
		    {lookupEnv" ^ m ^ " map' l2 e2} ->
		    {lookupEnv" ^ m ^ " map l2 e2}.\n
		    induction on 2.\n
		    intros Lanld STupdate STlookup.
		    STupdate : case STupdate.
		        case STlookup.
		            apply inequality_contradiction-" ^ m ^ " to Lanld.
		            search.

		        STlookup : case STlookup.
		            search.
		            apply IH to Lanld STupdate STlookup. search.\n"


(* TODO: scape % *)
let typeOf_update (ms : string list) (m : string) : string  = 
  "Theorem TypeOf-update"^ m ^": 
    forall " ^ (String.concat " " (getEnvMetaVars ms)) ^ " map map' e T L,
      typeOf" ^ m ^ " " ^ (String.concat " " (getEnvMetaVars ms)) ^ " map ->
	  	{typeOf (nilEnvT) " ^ (String.concat " " (getEnvMetaVars ms)) ^ " (label" ^ m ^ " L) (ref" ^ m ^ " T)} -> 
    {typeOf nilEnvT " ^ (String.concat " " (getEnvMetaVars ms)) ^ " e T} ->
      {updateMap" ^ m ^ " map L e map'} ->
      typeOf" ^ m ^ " " ^ (String.concat " " (getEnvMetaVars ms)) ^ " map'.\n
	  intros TypeOfH LookupEnvNotYet TypeOfE Update. 
	  LookupEnv : case LookupEnvNotYet. 
	  TypeOfHExpanded: case TypeOfH.
	  unfold.
	  intros LookupEnvHOfGoal.
	  Landl : apply excluded_middle_labels-" ^ m ^ " with l1 = L, l2 = l.
	  Landl : case Landl.
	  % l = L
	  apply Uniqueness-of-lookupEnv-" ^ m ^ " to LookupEnvHOfGoal LookupEnv.
	  apply update_implies_lookup-" ^ m ^ " to Update.
	  search.
	  % l != L
	  LookupMap : apply TypeOfHExpanded to LookupEnvHOfGoal.
	  apply lookup_when_inequal_labels-" ^ m ^ " to Landl Update LookupMap.
	  search.\n"
	  
	  (* 						    if isLabel(p.key[none]) then LookupInserted_(p.key[none]) : case TypeOfVar_(p.key[none]) else LookupInserted_(p.key[none]) : apply TypeOfVar_(p.key[none]) to endif. 							
							TypeOf_(p.output[none]) : apply TypeOf-update_(p.state[none]) to TypeOf_(p.inputState[none]) LookupInserted_(p.key[none]) TypeOfVar_(p.inserted[none]) Prem_(p)
 and had 	  	{lookupEnv" ^ m ^ " env" ^ m ^ " L T} ->

	  *)
	  
	  (* 	{typeOf nilEnvT envH envR e T} -> used to be 	{typeOf nilEnvT envH envR' e T} -> *)
let typeOf_update_strong (ms : string list) (m : string) : string  = 
"Theorem TypeOf-strong-updateR: 
    %assert 
	forall envH mapR mapR' envR envR' e T L,
    typeOfR envH envR mapR ->
    {updateEnvR envR L T envR'} ->
	{typeOf nilEnvT envH envR e T} ->
    {updateMapR mapR L e mapR'} ->
    typeOfR envH envR' mapR'. 
    intros TypeOfH LookupEnv TypeOfE Update.
	TmpLookup : apply update_implies_lookup-" ^ m ^ "  to Update. 
	TmpValue : apply Store-stores-values-" ^ m ^ "  to TmpLookup. 
	TypeOfE : assert {typeOf nilEnvT envH envR' e T}. backchain Irrelevance-Env-for-ValueTyping-" ^ m ^ ". 
    TypeOfHExpanded: case TypeOfH.
    unfold.
    intros LookupEnvHOfGoal.
    Landl : apply excluded_middle_labels-" ^ m ^ " with l1 = L, l2 = l.
    Landl : case Landl.
    % l = L
    apply update_implies_lookup-" ^ m ^ " to Update.
    apply update_implies_lookupEnv-" ^ m ^ " to LookupEnv. 
    apply Uniqueness-of-lookupEnv-" ^ m ^ " to LookupEnvHOfGoal H2.
    search.
    % l != L
    LookkupForTypeOfH : apply lookup_when_inequal_labels-pre-Env" ^ m ^ " to Landl LookupEnv LookupEnvHOfGoal. 
    LookupMap : apply TypeOfHExpanded to LookkupForTypeOfH.
    apply lookup_when_inequal_labels-" ^ m ^ " to Landl Update LookupMap.
    Value: apply Store-stores-values-" ^ m ^ " to LookupMap. 
    exists e1. split. search. 
    backchain Irrelevance-Env-for-ValueTyping-" ^ m ^ ".\n"

  (*
	  new premise: TypeOfVar_(p.inserted[none]): typeOf (nilEnvT) state_env(states) v t)
							    Tmp : apply Irrelevance-Env-for-ValueTyping-_(p.mapName[none]) to TypeOfVar_(p.inserted[none]) _ with EnvR'=EnvR'..  
								TypeOf_(p.outputMap[none]) : apply TypeOf-update_(p.mapName[none]) to TypeOf_(p.inputMap[none]) Typing_(p.envPremise[none]) Tmp Prem_(p)						

								TypeOf_(p.outputMap[none]) : apply TypeOf-strong-update_(p.mapName[none]) to TypeOf_(p.inputMap[none]) Typing_(p.envPremise[none]) TypeOfVar_(p.inserted[none]) _  Prem_(p)						
    and proof: {value e} -> 
	intros TypeOfH LookupEnv TypeOfEnotYet Value Update.
	TypeOfE : apply Irrelevance-Env-for-ValueTyping-R to TypeOfEnotYet Value with EnvR' = envR'.

*)
	  
let labels_remain_in_extended (m : string) : string  = 
  "Theorem labels-remain-in-extended-" ^m ^ " : forall env Rest L T, 
	{lookupEnv"^ m ^" env L T} -> {subsetEnv" ^ m ^ " env Rest} -> {lookupEnv" ^ m ^ " Rest L T}. \n
	induction on 2.
	intros.
	case H2. 
	search.
	apply IH to H1 H3. 
	search.\n"


let typeOf_weakening (ms : string list) (m : string) : string  = 
  "Theorem TypeOf-weakening-" ^ m ^ ": 
    forall " ^ (String.concat " " (getEnvMetaVars ms)) ^ " map E T l,
      typeOf" ^ m ^ " " ^ (String.concat " " (getEnvMetaVars ms)) ^ " map ->
      {typeOf nilEnvT " ^ (String.concat " " (getEnvMetaVars ms)) ^ " E T} ->
      typeOf"  ^ m ^ " (consEnv" ^ m ^ " l T env" ^ m ^ ")  " ^ (String.concat " " (List.tl (getEnvMetaVars ms))) ^ " (consMap" ^ m ^ " l E map).\n
  intros TypeOfH TypeOfE. 
  apply Type-state-envs-weakening-" ^m ^ " to TypeOfE _ with Env" ^ m ^ "' = (consEnv" ^ m ^ " l T env" ^ m ^ ").
  TypeOfHExpanded : case TypeOfH.
  unfold.
  intros LookupEnv.
  LookupEnv : case LookupEnv.
  search.
  TypeOfHFormulae0 : apply TypeOfHExpanded to LookupEnv.
  apply Type-state-envs-weakening-" ^m ^ " to TypeOfHFormulae1 _ with Env" ^ m ^ "' = (consEnv" ^ m ^ " l T env" ^ m ^ ").
  search.\n"



let typeOf_add (ms : string list) (m : string) : string =
  "Theorem TypeOf-extend" ^ m ^" : forall map E map' L T env " ^ (String.concat " " (List.tl (getEnvMetaVars ms))) ^ ",  
  {addMapH map E map' L} -> typeOf" ^ m ^ " (consEnv" ^ m ^ " L T env) " ^ (String.concat " " (List.tl (getEnvMetaVars ms))) ^ " (consMapH L E map) -> typeOf" ^m ^ " (consEnv" ^ m ^ " L T env) " ^ (String.concat " " (List.tl (getEnvMetaVars ms))) ^ " map'. \n
  induction on 1. intros Main Lookup.
  Subset: case Main.
  search.\n"
  
let map_stores_values lan (m : string) : string =
	let relationGrammarLine = language_grammarLookupByCategory lan "Relation" in 
		if relationGrammarLine = [] 
		then raise(Failure("isThereMoreThanOneState(), language_grammarLookupByCategory, Relation not found")) 
		else 
			if language_isThereMoreThanOneState lan then 
				let listOfAllArgsOfStep = Language.term_getArguments (List.hd (language_grammarLookupByCategory lan "Relation")) in 
				let listOfAllArgsOfStepMinusTheState = list_difference listOfAllArgsOfStep [LangVar m] in 
				let (LangVar otherstateWithIndex) = List.nth listOfAllArgsOfStepMinusTheState 1 in (* second element of the step E R when H is removed *)
				let (Var otherstate) = var_trim_numbers (Var otherstateWithIndex) in 
	"Theorem Store-stores-values-" ^ m ^ " : 
	  	forall map l e,
	  	{lookupMap" ^ m ^ " map l e} -> 
	  	{value e}.
	  skip.\n" 
			else ""


let irrelevant_typeof_extensionEnv lan (m : string) : string = 
	let listOfAllArgsOfStep = Language.term_getArguments (List.hd (language_grammarLookupByCategory lan "Relation")) in 
	let listOfAllArgsOfStepMinusTheState = list_difference listOfAllArgsOfStep [LangVar m] in 
	let (LangVar otherstateWithIndex) = List.nth listOfAllArgsOfStepMinusTheState 1 in (* second element of the step E R when H is removed *)
	let (Var otherstate) = var_trim_numbers (Var otherstateWithIndex) in 

(* it used to be  	typeOfR (consEnvH (succLabelH l) T EnvH) EnvR R.  when you were passing L rather than LNewH *)	
	" Theorem Irrelevance-TypeOf-with-ExtensionsOfEnv-" ^ m ^ ": 
 	forall EnvH EnvR l T R E,
 	typeOfR EnvH EnvR R ->
	{typeOf nilEnvT EnvH EnvR E T} -> 
 	typeOfR (consEnvH l T EnvH) EnvR R.
	intros TypeOfR. 
	TypeOfRExpanded: case TypeOfR. 
	unfold. intros LookupFromGoal.
	FromTypeOfR : apply TypeOfRExpanded to LookupFromGoal. 
	exists e. split. search. 
	backchain Type-state-envs-weakening-H.\n"
 
 
(* Description: Generates all common Theorems *)
(* Input : (m : string) representing the language meta variable map *)
(* Output : (m : string) all map-specific-proofs common in all languages *)


 
 
let generate_all_common_proofs_extensible lan (ms : string list) (m : string) : string =
  let proofs = [
    uniqueness_of_lookupMap m;
    find_type_in_env ms m;
    uniqueness_of_lookupEnv m;
	find_type_in_env_byLookup ms m;
    excluded_middle_labels m;
    update_implies_lookup m;
    inequality_contradiction m;
    lookup_when_inequal_labels m;
    typeOf_update ms m;
(*    lookup_store_weakening m; 
    labels_remain_in_extended m;*)
    typeOf_weakening ms m;
    typeOf_add ms m;
	map_stores_values lan m; 
  ] 
  @ if language_isThereMoreThanOneState lan then [irrelevant_typeof_extensionEnv lan m] else []
  in
  String.concat "\n" proofs

let generate_all_common_proofs_fixed lan (ms : string list) (m : string) : string =
let proofs = [
    uniqueness_of_lookupMap m;
	find_type_in_env_byLookup ms m;
    uniqueness_of_lookupEnv m;
    excluded_middle_labels m;
    update_implies_lookup m;
	update_implies_lookupEnv m; 
    inequality_contradiction m;
    lookup_when_inequal_labels m;
    lookup_when_inequal_labels_pre_env m;
	map_stores_values lan m; 
    typeOf_update_strong ms m;
(*    lookup_store_weakening m; 
    labels_remain_in_extended m;
    typeOf_weakening ms m;
    typeOf_add ms m
	*)
    ] 
    @ if language_isThereMoreThanOneState lan then [irrelevant_typeof_extensionEnv lan m] else []
    in
	String.concat "\n" proofs


(* old version of type-update where the premise is typeOf labelH rather than lookup.
	theorem premise: 
      {typeOf nilEnvT " ^ (String.concat " " (getEnvMetaVars ms)) ^ " (label" ^ m ^ " L) (ref" ^ m ^ " T)} ->
		
	proof:
  intros TypeOfH TypeOfE TypeOfLabel Update. 
  TypeOfHExpanded: case TypeOfH.
  unfold.
  intros LookupEnv.
  Landl : apply excluded_middle_labels with l1 = L, l2 = l.
  Landl : case Landl.

  LookupEnvFromTypeOf: case TypeOfE.
  apply Uniqueness-of-lookupEnv" ^ m ^ " to LookupEnv LookupEnvFromTypeOf.
  apply update_implies_lookup" ^ m ^ " to Update.
  search.

  LookupMap : apply TypeOfHExpanded to LookupEnv.
  apply lookup_when_inequal_labels" ^ m ^ " to Landl Update LookupMap.
  search.\n
*)


(*
Theorem Irrelevance-EnvR-for-ValueTyping: 
	forall EnvH EnvR EnvR' V T,
	{typeOf nilEnvT EnvH EnvR V T} -> 
	{value V} ->  
	{typeOf nilEnvT EnvH EnvR' V T}.
intros TypeOf Value. 
case Value. 
case TypeOf. search. % halt case
case TypeOf. search. % zero case
case TypeOf. search. % label case 


Theorem Registers_store_values : 
	forall map r e,
	{lookupMapR map r e} -> 
	{value e}.
skip. 



Theorem Heap_store_values : 
	forall map l e,
	{lookupMapH map l e} -> 
	{value e}.
skip. 


Theorem TypeOf-irrelevanceOfEnvR-H: 
	forall envH mapH envR envR',
    typeOfH envR envH mapH ->
    typeOfH envR' envH mapH. 
intros TypeOfH. 
TypeOfHExpanded : case TypeOfH. 
unfold. intros. 
apply TypeOfHExpanded to H1. 
apply Heap_store_values to H2. 
exists e. 
case H4. 
case H3. search. % halt case
case H3. search. % zero case
case H3. search. % label case


Theorem Irrelevance-TypeOfR-with-ExtensionsOfEnvH: 
	forall EnvH EnvR L T R,
	typeOfR EnvR EnvH R ->
	typeOfR EnvR (consEnvH (succLabelH L) T EnvH) R.
intros TypeOfR. 
TypeOfRExpanded : case TypeOfR. 
unfold. intros. 
apply TypeOfRExpanded to H1 H2. 
exists e1. 
exists e2. 
split. 
search. 
backchain Type-state-envs-weakening. 
search. 
backchain Type-state-envs-weakening. 

*)