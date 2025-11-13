open Batteries
open Option
open List
open Lnp

let rec substitution_evaluatedExpression evaluatedExpression var term = match evaluatedExpression with 
| Var(var2) -> if var = var2 then term else Var(var2)
| Num(n) -> Num(n)
| Name(cname) -> Name(cname)
| Constructor(cname, ts) -> Constructor(cname, List.map (substitution_evaluatedExpression_mapversion var term) ts)
| ValuesOf(t) -> ValuesOf(substitution_evaluatedExpression t var term)
| ValueArgs(t) -> ValueArgs(substitution_evaluatedExpression t var term)
| OfType(t) -> OfType(substitution_evaluatedExpression t var term)
| IsVar(t) -> IsVar(substitution_evaluatedExpression t var term)
| IsSingleValue(t) -> IsSingleValue(substitution_evaluatedExpression t var term)
| TargetV(t) -> TargetV(substitution_evaluatedExpression t var term)
| TargetOp(t) -> TargetOp(substitution_evaluatedExpression t var term)
| ContainsSub(t) -> ContainsSub(substitution_evaluatedExpression t var term)
| EvaluationOrder(t) -> EvaluationOrder(substitution_evaluatedExpression t var term)
| ContextualArgs(t) -> ContextualArgs(substitution_evaluatedExpression t var term)
| GetArgs(t1, t2) -> GetArgs(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
| IsEliminationForm(t) -> IsEliminationForm(substitution_evaluatedExpression t var term)
| IsErrorHandler(t) -> IsErrorHandler(substitution_evaluatedExpression t var term)
| GetArgType(t1, t2) -> GetArgType(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
| InList(t1, t2) -> InList(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
| IS(t1, t2) -> IS(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
| EqualTerm(t1, t2) -> EqualTerm(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
| OrTerm(t1, t2) -> OrTerm(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
| AndTerm(t1, t2) -> AndTerm(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
| NotTerm(t) -> NotTerm(substitution_evaluatedExpression t var term)
(* for map state *)
| IsOperation(t) -> IsOperation(substitution_evaluatedExpression t var term)
| Constructed(t) -> Constructed(substitution_evaluatedExpression t var term)
| Range(t) -> Range(substitution_evaluatedExpression t var term)
| Arity(t) -> Arity(substitution_evaluatedExpression t var term)
| ExtendState(t1, t2) -> ExtendState(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
| WhichArg(t1, t2) -> WhichArg(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
| WhichArgTest(t1, t2) -> WhichArgTest(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
| Dot(t,field,predname) -> Dot(substitution_evaluatedExpression t var term, field, predname)
(* rules and formulae come from the language, we do not substitute in there *)
| LNPRule(premises,conclusion) -> LNPRule(premises,conclusion)
| LNPFormula(formula, n) -> LNPFormula(formula, n) 
| States(b) -> States(b)
| StateEnv(t) -> StateEnv(substitution_evaluatedExpression t var term)
| MapEnv(t) -> MapEnv(substitution_evaluatedExpression t var term)
| LabelOf(t1, t2) -> LabelOf(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
| RefOf(t1, t2) -> RefOf(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
| Prime(t) -> Prime(substitution_evaluatedExpression t var term)
| MapNewEntry(t1, t2) -> MapNewEntry(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
| Can(t) -> Can(substitution_evaluatedExpression t var term)
| FindVar(t1, t2) -> FindVar(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
| FindVarTest(t1, t2) -> FindVarTest(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)


and substitution_evaluatedExpression_mapversion var term evaluatedExpression = substitution_evaluatedExpression evaluatedExpression var term

let substitution_lnp_name lnp_name var term = match lnp_name with 
	| SuffixedString(str, evaluatedExpression) -> SuffixedString(str, substitution_evaluatedExpression evaluatedExpression var term)
	| String hypname when hypname = var -> String (var_getVarName term)
	| _ -> lnp_name
let substitution_lnp_name_map_version var term lnp_name = substitution_lnp_name lnp_name var term

let rec substitution_formula formula var term = match formula with 
	| Bottom -> Bottom
	| True -> True
	| Formula(lnp_name, predname, ts) -> Formula(substitution_lnp_name lnp_name var term, predname, List.map (substitution_evaluatedExpression_mapversion var term) ts)
	| Forall(var2, formula) -> Forall(var2, substitution_formula formula var term)
	| Exists(var2, formula) -> Exists(var2, substitution_formula formula var term)
	| ForallVars(t, formula) -> ForallVars(substitution_evaluatedExpression t var term, substitution_formula formula var term)
	| ExistsVars(t, formula) -> ExistsVars(substitution_evaluatedExpression t var term, substitution_formula formula var term)
	| EqualFormula(t1, t2) -> EqualFormula(substitution_evaluatedExpression t1 var term, substitution_evaluatedExpression t2 var term)
	| OrMacro(var2, t, formula) -> OrMacro(var2, substitution_evaluatedExpression t var term, substitution_formula formula var term)
	| AndMacro(var2, t, formula) -> AndMacro(var2, substitution_evaluatedExpression t var term, substitution_formula formula var term)
	| ImplyMacro(var2, t, formula) -> ImplyMacro(var2, substitution_evaluatedExpression t var term, substitution_formula formula var term)
	| Imply(formula1, formula2) ->  Imply(substitution_formula formula1 var term, substitution_formula formula2 var term)
	| And(formula1, formula2) -> And(substitution_formula formula1 var term, substitution_formula formula2 var term)
	| Or(formula1, formula2) -> Or(substitution_formula formula1 var term, substitution_formula formula2 var term)
	(* reimplemented some for subtyping *)
	| ForallStar(formula) -> ForallStar(substitution_formula formula var term)
	| ExistsStar(formula) -> ExistsStar(substitution_formula formula var term)
	| FormulaTHM(lnp_name, lnp_predname, ts) -> FormulaTHM(substitution_lnp_name lnp_name var term, substitution_lnp_name lnp_predname var term, List.map (substitution_evaluatedExpression_mapversion var term) ts)

let substitution_one_equality var term (varOfEquality, t) = (varOfEquality, substitution_evaluatedExpression t var term)

let rec substitution_proof proof var term = match proof with 
	| Intros -> Intros
	| Search -> Search
	| NoOp -> NoOp
	| Skip -> Skip
	| Case(lnp_name1, lnp_name2) -> Case(substitution_lnp_name lnp_name1 var term, substitution_lnp_name lnp_name2 var term)
	| CaseStar(lnp_name1, lnp_name2, proof) -> CaseStar(substitution_lnp_name lnp_name1 var term, substitution_lnp_name lnp_name2 var term, substitution_proof proof var term)
	| Induction(lnp_name1, lnp_name2) -> Induction(substitution_lnp_name lnp_name1 var term, substitution_lnp_name lnp_name2 var term)
	| InductionStar(lnp_name1, lnp_name2, proof) -> InductionStar(substitution_lnp_name lnp_name1 var term, substitution_lnp_name lnp_name2 var term, substitution_proof proof var term)
	| Apply(lnp_name1, lnp_name2, lnp_names, equalities) -> let newEqualities = if is_none equalities then None else Some (List.map (substitution_one_equality var term) (get equalities)) in Apply(substitution_lnp_name lnp_name1 var term, substitution_lnp_name lnp_name2 var term, List.map (substitution_lnp_name_map_version var term) lnp_names, newEqualities)
	| Backchain(lnp_name) -> Backchain(substitution_lnp_name lnp_name var term)
	| If(t, proof1, proof2) -> If(substitution_evaluatedExpression t var term, substitution_proof proof1 var term, substitution_proof proof2 var term)
	| ForEachProof(var2, t, proof) -> ForEachProof(var2, substitution_evaluatedExpression t var term, substitution_proof proof var term)
	| Seq(proof1, proof2) -> Seq(substitution_proof proof1 var term, substitution_proof proof2 var term)
	| Split -> Split
	| Witness t -> Witness(substitution_evaluatedExpression t var term)
	| Assert t -> Assert(substitution_formula t var term)
	| Clear lnp_name -> Clear(substitution_lnp_name lnp_name var term)
	| Let(hyp,t,lnp_name1,lnp_name2,p) -> Let(hyp,substitution_evaluatedExpression t var term,substitution_lnp_name lnp_name1 var term, substitution_lnp_name lnp_name2 var term,substitution_proof p var term)

(* substitution_schema also removes the Iteration part of the theorem (for each ...)  *)
let substitution_schema schema var term = ForEachThm(None, substitution_lnp_name (schema_getTheoremName schema) var term, substitution_formula (schema_getTheorem schema) var term, substitution_proof (schema_getProof schema) var term)

