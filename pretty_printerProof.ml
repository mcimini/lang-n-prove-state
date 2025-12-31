(* Description:  Generate type of definition for single of multiple mapped languages*)
(* Input : (ms : list string) representing the language meta variable map*)
(* Output : string Representing all needed typeof definitions*)
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

  let uniqueness_of_lookupMap (m : string) : string = 
  "Theorem Uniqueness-of-lookupMap" ^ m ^" : forall map L e1 e2, {lookupMap" ^ m ^" map L e1} -> {lookupMap" ^ m ^ " map L e2} -> e1 = e2.
skip.\n"

let find_type_in_env (m : string) : string = 
  "Theorem  Find-type-in-env" ^ m ^ "  :\n
    forall env map L e T,\n
    {lookupMap" ^ m ^ " map L e} ->\n
    typeOfH env map ->\n
    {typeOf (nilEnvT) env (label" ^ m ^ " L) (ref" ^ m ^ " T)} ->\n
    {typeOf (nilEnvT) env e T}. \n" ^
    "intros lookup typeOfH typeOf.\n
    case typeOf(keep).\n
    case typeOfH(keep).\n
    apply H2 to H1.\n
    apply Uniqueness-of-lookupMap"^ m ^ " to lookup H3.\n
    search.\n"


let uniqueness_of_lookupEnv (m : string) : string =
  "Theorem Uniqueness-of-lookupEnv" ^ m ^ " : forall env L e1 e2, {lookupEnv" ^ m ^ " env L e1} -> {lookupEnv" ^ m ^"  env L e2} -> e1 = e2.\n skip.\n"

(* NOTE need to scape \/ *)
let excluded_middle_labels (m : string) : string =
  "Theorem excluded_middle_labels : forall (l1 : label"^ m ^") (l2 : label" ^ m ^ "), (l1 = l2) \\/ (l1 = l2 -> false).\n skip.\n"

let update_implies_lookup (m : string) : string  = 
  "Theorem update_implies_lookup" ^ m ^" :
  forall map l map' e,
  {updateMap" ^ m ^ " map l e map'} -> {lookupMap" ^ m ^ " map' l e}.\n
  induction on 1. intros Main.
  StUpdate : case Main.
  search.
  apply IH to StUpdate. search.\n"



let inequality_contradiction (m : string) : string  = 
  " Theorem inequality_contradiction : \n
  forall (l : label" ^ m ^ "),\n
    (l = l -> false) ->\n
    false.\n
  intros Contra. Equal : assert l = l. apply Contra to Equal.\n"


let lookup_when_inequal_labels (m : string) : string  = 
  "Theorem lookup_when_inequal_labels" ^ m ^":\n
  forall l1 l2 map map' e1 e2\n,
    (l1 = l2 -> false) ->
    {updateMap" ^ m ^ " map l1 e1 map'}    ->
    {lookupMap" ^ m ^ " map l2 e2} ->
    {lookupMap" ^ m ^ " map' l2 e2}.\n
  induction on 2.\n
  intros Lanld STupdate STlookup.
  STupdate : case STupdate.
      case STlookup.
          apply inequality_contradiction to Lanld.
          search.

      STlookup : case STlookup.
          search.
          apply IH to Lanld STupdate STlookup. search.\n"

(* TODO: scape % *)
let typeOf_update (m : string) : string  = 
  "Theorem TypeOf-update"^ m ^": 
    forall env map map' e T L,
      typeOfH env map ->
      {typeOf nilEnvT env (label" ^ m ^ " L) (ref" ^ m ^ " T)} ->
    {typeOf nilEnvT env e T} ->
      {updateMap" ^ m ^ " map L e map'} ->
      typeOfH env map'.\n
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
  search.\n"

let lookup_store_weakening m = "Theorem Lookup-store-weakening\n:
  forall env l t env'\n,
    {subsetEnv" ^ m ^ " env env'} ->\n
    {lookupEnv" ^ m ^ " env l t} ->\n
    {lookupEnv" ^ m ^ " env' l t}.\n
induction on 1. intros Main Lookup.\n
Subset: case Main.\n
    search.\n
apply IH to Subset Lookup.\n
    search.\n"

let labels_remain_in_extended (m : string) : string  = 
  "Theorem labels-remain-in-extended-" ^m ^ " : forall env Rest L T, 
	{lookupEnv"^ m ^" env L T} -> {subsetEnv" ^ m ^ " env Rest} -> {lookupEnv" ^ m ^ " Rest L T}. \n
	induction on 2.
	intros.
	case H2. 
	search.
	apply IH to H1 H3. 
	search.\n"


let typeOf_weakening (m : string) : string  = 
  "Theorem TypeOf-weakening" ^ m ^ ": 
    forall env map E T l,
      typeOf" ^ m ^ " env map ->
      {typeOf nilEnvT env E T} ->
      typeOf"  ^ m ^ " (consEnv" ^ m ^ " l T env) (consMapH l E map).\n
  intros TypeOfH TypeOfE. 
  apply Type-state-envs-weakening to TypeOfE _ with env' = (consEnv" ^ m ^ " l T env).
  TypeOfHExpanded : case TypeOfH.
  unfold.
  intros LookupEnv.
  LookupEnv : case LookupEnv.
  search.
  TypeOfHFormulae0 : apply TypeOfHExpanded to LookupEnv.
  apply Type-state-envs-weakening to TypeOfHFormulae1 _ with env' = (consEnv" ^ m ^ " l T env).
  search.\n"



let typeOf_add (m : string) : string =
  "Theorem TypeOf-add" ^ m ^" : forall map E map' L T env,  
  {addMapH map E map' L} -> typeOf" ^ m ^ " (consEnv" ^ m ^ " L T env) (consMapH L E map) -> typeOf" ^m ^ " (consEnv" ^ m ^ " L T env) map'. \n
  induction on 1. intros Main Lookup.
  Subset: case Main.
  search.\n"

(* Description: Generates all common Theorems *)
(* Input : (m : string) representing the language meta variable map*)
(* Output : (m : string) all map-specific-proofs common in all languages*)
let generate_all_common_proofs (m : string) : string =
  let proofs = [
    uniqueness_of_lookupMap m;
    find_type_in_env m;
    uniqueness_of_lookupEnv m;
    excluded_middle_labels m;
    update_implies_lookup m;
    inequality_contradiction m;
    lookup_when_inequal_labels m;
    typeOf_update m;
    lookup_store_weakening m;
    labels_remain_in_extended m;
    typeOf_weakening m;
    typeOf_add m
  ] in
  String.concat "\n" proofs