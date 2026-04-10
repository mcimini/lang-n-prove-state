open Batteries
open Option
open List
open Lnp
open Language
open Substitution

(* 
	takes fpl_cbv and a theorem schema.
    on fpl_cbv: goes to the 3rd category, which is Value, takes the 3rd operator, which is "pair" 
	and sets the name of the theorem as "pair"
*)
let unusedVar = "_unused_"

(* remove_DoNotGenerateTheorems: returns FALSE if there is a doNotGenerateThisTheorem in the proof *)
let rec remove_DoNotGenerateTheorems (schema : schema) : bool = match schema with ForEachThm(option, name, f, proof) -> 
	begin match proof with 
	| DoNotGenerateThisProof -> false
	| Seq(DoNotGenerateThisProof, restOfProof) -> false
	| Seq(_, restOfProof) -> remove_DoNotGenerateTheorems (ForEachThm(option, name, f, restOfProof))
	| _ -> true 
	end

let rec langConstructor_to_LNPConstructor (termFromLanguage : term) : evaluatedExpression = match termFromLanguage with 
	| Constr(cname, ts) -> Constructor(cname, List.map langConstructor_to_LNPConstructor ts) 
	| LangVar(var) -> Var(var)
	| Abs(t) -> langConstructor_to_LNPConstructor t (* Here you miss (X)e and just display e *)
	| AbsType(t) -> langConstructor_to_LNPConstructor t 
	| Substitution(t1,t2,t3) -> Constructor("substitution", [])
	(* | _ -> raise(Failure(dump termFromLanguage))*)
	
let rec lnpConstructor_to_langConstructor (e : evaluatedExpression) : term = match e with 
| Constructor(cname, ts) -> Constr(cname, List.map lnpConstructor_to_langConstructor ts) 
| Var(var) -> LangVar(var)


let lnp_langFormulaToLNPFormula ((Formula(predname,ts)) : Language.formula) : Lnp.formula = (Formula(String "", predname, List.map langConstructor_to_LNPConstructor ts))
let lnp_langFormulaToLNPExpression (n : int) (f : Language.formula) : Lnp.evaluatedExpression = LNPFormula (lnp_langFormulaToLNPFormula f, n)
let lnp_LNPFormulaTolangFormula ((Formula(lnpname, predname,ts)) : Lnp.formula) : Language.formula = Formula(predname, List.map lnpConstructor_to_langConstructor ts)
let lnp_langRuleToLNPRule ((Rule(premises,conclusion)) : rule) : evaluatedExpression = LNPRule(List.map lnp_langFormulaToLNPFormula premises, lnp_langFormulaToLNPFormula conclusion)
let lnp_LNPRuleTolangRule ((LNPRule(premises,conclusion)) : evaluatedExpression) : rule = Rule(List.map lnp_LNPFormulaTolangFormula premises, lnp_LNPFormulaTolangFormula conclusion)

let info_getVarsAffected info :  evaluatedExpression list = begin match List.hd (List.rev info) with | Constructor("varAffected", vars) -> vars | _ -> [] end

(* assumption, always called with consEnvH and cuts the first 4 characters to get EnvH. get_nominal_env_name always returns Var *)
let get_nominal_env_name (e : evaluatedExpression) : evaluatedExpression = match e with | Constructor(cname, _) -> let nameOfEnv = String.sub cname 4 ((String.length cname) - 4) in Var (trim_numbers nameOfEnv) | Var var -> Var (trim_numbers var)

type eval_result = 
	| Term of evaluatedExpression
	| ListOfTerms of evaluatedExpression list
	| Number of int 
	| Boolean of bool


let eval_getTerm (Term(evaluatedExpression)) : evaluatedExpression = evaluatedExpression
let eval_getNumber (Number(n)) : int = n
let eval_getBoolean (Boolean(b)) : bool = b
let eval_getListOfTerms (ListOfTerms(l)) = l 
let eval_createListFromTermAndListOfTerm t = match t with Term(t1) -> [t1] | ListOfTerms(l) -> l
	
let rec eval lan evaluatedExpression : eval_result = match evaluatedExpression with 
	| Var(var2) -> Term(Var(var2)) (* Vars of LNP should already been substituted, but formula's such as forall e, .. (value e) are still there)) *)
	| Num(n) -> Number(n)
	| Name(cname) -> ListOfTerms (List.map langConstructor_to_LNPConstructor (language_grammarLookupByCategory lan cname))
	| Constructor(cname, ts) -> Term (Constructor(cname, ts)) (* OLD: Term (Constructor(cname, List.map eval_getTerm (List.map (eval lan) ts)))) *)
	| ValuesOf(t) -> ListOfTerms (List.map langConstructor_to_LNPConstructor (language_getValuesByType lan (term_getConstructorName (eval_getTerm (eval lan t)))))
	| ValueArgs(t) -> ListOfTerms (List.map langConstructor_to_LNPConstructor (language_getValueArgs lan (term_getConstructorName (eval_getTerm (eval lan t)))))
	| OfType(t) -> Term (langConstructor_to_LNPConstructor (language_getTypeByOp lan (term_getConstructorName (eval_getTerm (eval lan t)))))
	| IsVar(t) -> Boolean (term_isVar (eval_getTerm (eval lan t)) || term_isSubstitution (eval_getTerm (eval lan t)))
	| IsSingleValue(t) -> Boolean (List.length (eval_getListOfTerms (eval lan (ValuesOf(t)))) <= 1)
	| TargetV(t) -> ListOfTerms (List.map langConstructor_to_LNPConstructor (language_getTargetValuesFromVars lan (term_getConstructorName (eval_getTerm (eval lan t)))))
	| TargetOp(t) -> ListOfTerms (List.map langConstructor_to_LNPConstructor (language_getTargetValuesFromOp lan (term_getConstructorName (eval_getTerm (eval lan t)))))
	| ContainsSub(t) -> Boolean (term_constains_substitution (eval_getTerm (eval lan t)))
	| EvaluationOrder(t) -> ListOfTerms (List.map numberToNumTerm (language_getEvaluationOrderForOp lan (term_getConstructorName (eval_getTerm (eval lan t)))))
	| ContextualArgs(t) -> ListOfTerms (List.map numberToNumTerm (language_getContextualArgs lan (term_getConstructorName (eval_getTerm (eval lan t)))))
	| GetArgs(t1, t2) -> Term (term_getNthArg (eval_getTerm (eval lan t1)) (eval_getNumber (eval lan t2)))
	| IsEliminationForm(t) -> Boolean (language_isEliminationForm lan (term_getConstructorName (eval_getTerm (eval lan t))))
	| IsErrorHandler(t) -> Boolean (language_isErrorHandler lan (term_getConstructorName (eval_getTerm (eval lan t))))
	| GetArgType(t1, t2) -> let typeTermFromLanguage = (language_getTypeOfNthArg lan (term_getConstructorName (eval_getTerm (eval lan t1))) (eval_getNumber (eval lan t2)))
								in Term (langConstructor_to_LNPConstructor typeTermFromLanguage)
	| InList(t1, t2) -> Boolean (term_list_mem (eval_getTerm (eval lan t1)) (eval_getListOfTerms (eval lan t2)))
	| IS(t1, t2) -> (Boolean (term_list_mem_upToNumbers (eval_getTerm (eval lan t1)) (eval_getListOfTerms (eval lan t2))))  
	| EqualTerm(t1, t2) -> (match (eval lan t1),(eval lan t2)  with 
							| Term(Constructor(cname1, _)), Term(Constructor(cname2, _)) -> Boolean (cname1 = cname2)
							| Number(n1), Number(n2) -> Boolean (n1 = n2) 
							| Term(Var(var1)), Term(Var(var2)) -> Boolean (var_and_names_equality var1 var2) (* let _ = print_string("equalTerms between two vars : " ^ var1 ^ "=AND=" ^ var2 ^ " and " ^ string_of_bool (var_and_names_equality var1 var2) ^ "\n") in  *)
							| ListOfTerms l1, ListOfTerms l2 -> Boolean (l1 = l2) 
							| _ -> Boolean false )
	| OrTerm(t1, t2) -> Boolean (eval_getBoolean (eval lan t1) || eval_getBoolean (eval lan t2))
	| AndTerm(t1, t2) -> Boolean (eval_getBoolean (eval lan t1) && eval_getBoolean (eval lan t2))
	| NotTerm(t) -> Boolean (not (eval_getBoolean (eval lan t)))
	(* for map state *)
	| IsOperation(t) -> Boolean ((not (eval_getBoolean (eval lan (IS(t, Name "Value"))))) && (not (eval_getBoolean (eval lan (IS(t, Name "Error"))))))
	| Constructed(t) -> Boolean (not (term_isVar (eval_getTerm (eval lan t))))
	| Range(t) -> let howManyNums = (match (eval lan t) with | Number(n) -> n | ListOfTerms l -> List.length l) in ListOfTerms (List.init howManyNums (fun n -> Num n)) 
	| Arity(t) -> Number (List.length (Lnp.term_getArguments (eval_getTerm (eval lan t))))
	| ExtendState(t1, t2) -> let r' =  lnp_LNPRuleTolangRule (eval_getTerm (eval lan t1)) in 								(* Boolean (term_getCNAME (rule_getInputOfConclusion r') = "ref") *)
								begin match (term_getCNAME (rule_getInputOfConclusion r')), (eval_getTerm (eval lan t2)) with 
								| "ref", Var "H" -> Boolean true
								| "doubleref", _ -> Boolean true
								| "refAndStore", _ -> Boolean true
								| _ -> Boolean false
								end
	| WhichArg(t1, t2) -> let indeces = (lnp_find_indexes_upTo (Lnp.term_getArguments (eval_getTerm (eval lan t1))) (eval_getTerm (eval lan t2)) "label" [] 0) in (* [] and 0 are initializers *) 
							if indeces = [] then Number 100 (* raise(Failure("WhichArg, arg not found: " ^ dump (Lnp.term_getArguments (eval_getTerm (eval lan t1))) ^ "--" ^ dump (eval_getTerm (eval lan t2)))) *)
							else Number (List.hd indeces) 
	| WhichArgTest(t1, t2) -> if (eval_getNumber (eval lan (WhichArg(t1, t2)))) = 100 then Boolean false else Boolean true
	| Dot(t,field,predname) -> let subject = (eval_getTerm (eval lan t)) in 
								begin match subject, field with 
									| Constructor(cname, _), "rule" -> Term(lnp_langRuleToLNPRule (lang_retrieveTHERule_by_predname_opname lan predname cname)) 
									| Constructor(cname, _), "rules" -> ListOfTerms (List.map lnp_langRuleToLNPRule (lang_retrieveRules_by_predname_opname lan predname cname)) 
									| Constructor(cname, _), "nominal" -> eval lan (Dot(get_nominal_env_name subject,field,predname)) (* assumption, always called with consEnvH and cuts the first 4 characters to get EnvH. get_nominal_env_name always returns Var *) 
									| Var(var), "nominal" -> Term(Var((trim_numbers var))) 
									| Constructor(cname, _), "nominalState" -> eval lan (Dot(get_nominal_env_name subject,field,predname)) (* assumption, always called with consEnvH and cuts the first 4 characters to get EnvH. get_nominal_env_name always returns Var *) 
									| Var(var), "nominalState" ->  Term(Var(String.make 1 (last_character (trim_numbers var)))) 
									| Var(var), "otherEnvs" -> ListOfTerms (List.map (fun t -> eval_getTerm (eval lan (StateEnv(t)))) (list_difference (eval_getListOfTerms (eval lan (States(false)))) [Var(var)]))
									| LNPRule(premises, _), "premises" -> let premisesLang = List.map lnp_LNPFormulaTolangFormula premises in 
																		  let premisesLangWithIdx : evaluatedExpression list = (List.mapi lnp_langFormulaToLNPExpression premisesLang) in 
																		  let premisesToGiveOut : evaluatedExpression list = (lnp_getOnlyPremisesOfPredname premisesLangWithIdx predname) in 
																		(* if predname = "update" && (not (premisesToGiveOut = [])) then let _ = print_string("premises[update]: " ^ dump premisesToGiveOut) in  ListOfTerms (List.map lnp_langFormulaToLNPExpression premisesToGiveOut) else *) 
																		  ListOfTerms premisesToGiveOut
									| LNPRule(premises, _), "premisesIdx" -> let premisesLang = List.map lnp_LNPFormulaTolangFormula premises in 
																			 ListOfTerms (List.map numberToNumTerm (lang_getIdxOfOnlyPremisesOfPredname premisesLang predname)) 
									| LNPRule(_, conclusion), "conclusion" -> Term (LNPFormula(conclusion,(-1)))
									| LNPFormula(Formula(_,prednameOfFormula, es), n), _ -> (* sourceExp, label, ExpToInsert *) 
									  (* let _ = print_string (dump es ^ prednameOfFormula ^ field ^ "\n") in *)
										begin match prednameOfFormula, field with 
										| "typeOf", "exp" -> Term (List.nth (List.rev es) 1) (* always the second to last arg *)
										| "step", "sourceExp" ->  Term (List.nth es 0)
										| "step", "targetExp" ->  Term (List.nth es ((List.length es) / 2)) (* first half is source exp + state. *)
										| "lookup", "output" -> Term (List.nth es 0)
										| "lookup", "label" -> Term (List.nth es 3)
										| "lookup", "mapName" -> Term (List.nth es 2)
										| "update", "label" -> Term (List.nth es 3)
										| "update", "inserted" -> Term (List.nth es 4)   (* when update and updateStrong where both update: if List.length es = 6 then Term (List.nth es 5) else Term (List.nth es 4) *)
										| "update", "mapName" -> Term (List.nth es 1)
										| "update", "inputMap" -> Term (List.nth es 2)
										| "update", "outputMap" -> Term (List.nth es 0)
										| "updateStrong", "inserted" -> Term (List.nth es 4)   (* when update and updateStrong where both update: if List.length es = 6 then Term (List.nth es 5) else Term (List.nth es 4) *)
										| "updateStrong", "mapName" -> Term (List.nth es 1)
										| "updateStrong", "inputMap" -> Term (List.nth es 2)
										| "updateStrong", "outputMap" -> Term (List.nth es 0)
										| "updateStrong", "envPremise" -> Term (List.nth es 5)
										| "add", "expToInsert" -> Term (List.nth es 4)
										| "add", "newLabel" -> Term (List.nth es 2)
										| "add", "mapName" -> Term (List.nth es 1)
										| "add", "inputMap" -> Term (List.nth es 3)
										| "add", "outputMap" -> Term (List.nth es 0)
										| "add", "otherMap" -> Term (Var "R")
										| "update", "op" -> Number 0
										| "updateStrong", "op" -> Number 1
										| "add", "op" -> Number 2
										| "update", "mainInput" -> Term (List.nth es 3)
										| "updateStrong", "mainInput" -> Term (List.nth es 3)
										| "add", "mainInput" -> Term (List.nth es 4)
										| "subtype", "envs" -> begin match es with [_ ; info] -> 
											let argsOfEnvConstructor =  if info_getVarsAffected (Lnp.term_getArguments info) = [] then (Lnp.term_getArguments info) else List.rev (List.tl (List.rev (Lnp.term_getArguments info))) in  (* without the last, which is the varAffected *)
												ListOfTerms (List.tl (List.tl argsOfEnvConstructor)) end (* after the first two you have the envs *)
										| "subtype", "newAddedLabel" -> begin match es with [_ ; info] -> Term (List.nth (Lnp.term_getArguments info) 0) end
										| "subtype", "type" -> begin match es with [_ ; info] -> Term (List.nth (Lnp.term_getArguments info) 1) end
										| "subtype", "varsAffected" -> begin match es with [_ ; info] -> if info_getVarsAffected (Lnp.term_getArguments info) = [] then ListOfTerms [] else ListOfTerms (info_getVarsAffected (Lnp.term_getArguments info)) end
										| "subtype", "envsNominal" -> begin match es with [_ ; info] -> 
											let argsOfEnvConstructor =  if info_getVarsAffected (Lnp.term_getArguments info) = [] then (Lnp.term_getArguments info) else List.rev (List.tl (List.rev (Lnp.term_getArguments info))) in (* without the last, which is the varAffected *)
												ListOfTerms (List.map get_nominal_env_name (List.tl (List.tl argsOfEnvConstructor))) end (* after the first two you have the envs *)
										| "user-defined", "predname" -> Term (List.nth es 0)
										| "user-defined", "output" -> Term (List.nth (List.rev es) 0)  (* always the last by convention, so reverse and first *)
										| "user-defined", "args" -> let argsWithoutPrednameAndOutput = List.rev (List.tl (List.rev (List.tl es))) in ListOfTerms argsWithoutPrednameAndOutput
										| "retrieve", "mapName" -> Term (List.nth es 0)
										| "retrieve", "varAffected" -> Term (List.nth es 1)
										| _ -> raise(Failure("dot-notation on formulae, field not found: " ^ prednameOfFormula ^ field))
										end 
									| _ -> raise(Failure("dot-notation, field not found: " ^ predname ^ field ^ dump subject))
								end
	(* LNP rules and formulae compile to themselves *)
	| LNPRule(premises,conclusion) -> Term (LNPRule(premises,conclusion)) 
	| LNPFormula(formula, n) -> Term (LNPFormula(formula, n)) 
	| States(b) -> 
				(* let _ = if b then print_string ("States() called with: " ^ string_of_bool b) else () in *)
				let relationGrammarLine = language_grammarLookupByCategory lan "Relation" in if relationGrammarLine = [] then raise(Failure("states(), language_grammarLookupByCategory, Relation not found")) else 
				let listOfAllArgsOfStep = Language.term_getArguments (List.hd (language_grammarLookupByCategory lan "Relation")) in 
				let allStates = List.tl (list_take ((List.length listOfAllArgsOfStep) / 2) listOfAllArgsOfStep) in 
				let allStatesAsEvalexp = List.map langConstructor_to_LNPConstructor allStates in 
				let allStatesAsEvalexpTrimmed = List.map var_trim_numbers allStatesAsEvalexp in 
				let allStatesRequested = if b then list_difference allStatesAsEvalexpTrimmed (List.map langConstructor_to_LNPConstructor (language_get_strong_maps lan)) else allStatesAsEvalexpTrimmed 
				in ListOfTerms allStatesRequested
	| StateEnv(t) -> begin match (eval lan t) with 
		| Term(statevar) -> Term (langConstructor_to_LNPConstructor (retrieve_env_by_state lan (lnpConstructor_to_langConstructor statevar))) 
		| ListOfTerms(l) -> 
			(* let abc = (List.map (retrieve_env_by_state lan) (List.map lnpConstructor_to_langConstructor l)) in 
			let _ = print_string ("Calculate state envs: " ^ dump abc) in *)
			ListOfTerms (List.map langConstructor_to_LNPConstructor (List.map (retrieve_env_by_state lan) (List.map lnpConstructor_to_langConstructor l))) 
		end
	| MapEnv(t) -> begin match (eval lan t) with 
		| Term(mapvar) -> Term (langConstructor_to_LNPConstructor (retrieve_map_by_state lan (lnpConstructor_to_langConstructor mapvar))) 
		| ListOfTerms(l) -> 
			(* let abc = (List.map (retrieve_env_by_state lan) (List.map lnpConstructor_to_langConstructor l)) in 
			let _ = print_string ("Calculate state envs: " ^ dump abc) in *)
			ListOfTerms (List.map langConstructor_to_LNPConstructor (List.map (retrieve_map_by_state lan) (List.map lnpConstructor_to_langConstructor l))) 
		end
	(* t2, the l, could be argument or string *)
	| LabelOf(t1, t2) -> begin match (eval lan t1) with
		| Term (Var statevar) -> Term (Constructor( "label" ^ statevar , [t2]))
		end
	| RefOf(t1, t2) -> begin match (eval lan t1) with
		| Term (Var statevar) -> Term (Constructor( "ref" ^ statevar , [t2]))
		end
	| Prime(t, t2opt, b) -> begin match eval lan t with 
		| Term(t1) -> Term(prime_a_variable t1) 												    
		(* below: If b is true then EXCEPT: identity on the one you found, prime_a_var on the other. If b is false then ONLY: prime_a_var on the one you found, identity on the other *)
		| ListOfTerms(l) -> if is_some t2opt then let (Term t2) = eval lan (get t2opt) in let f1,f2 = if b then ((fun x -> x), prime_a_variable) else (prime_a_variable, (fun x -> x)) in 
											 Term (Constructor("", (List.map (fun a -> if a = t2 then f1 a else f2 a) l))) 
							else Term (Constructor("", (List.map prime_a_variable l)))
		end (* ListOfTerms (List.map prime_a_variable l) *)
	| MapNewEntry(t1,t2) -> 
			begin match (eval_getTerm (eval lan t1), eval_getTerm (eval lan t2)) with LNPRule(premises, concl), Var envVar -> 
			let premisesReversed = List.rev premises in (* reverse so that the scan below catches the last that matches from the end just by looking at the first *)
			let rec search_for_env_in_terms l = 
				let answer = 
				if l = [] then Term(Var envVar) else if List.exists (my_starts_with envVar) (term_getVars (List.hd l)) then Term (List.hd l) else search_for_env_in_terms (List.tl l) 
				in 
(*				let _ = print_string ("search_for_env_in_terms: " ^ dump answer) in *)
				answer
			in 
			let extract_env (Constructor(_,ts)) = search_for_env_in_terms ts in 
			let rec search_for_env_in_prems l = if l = [] then Term(Var envVar) else 
				match true_formula_getPredname (List.hd premisesReversed) with 
				| "subtype" when List.exists (my_starts_with envVar) (formula_getVars (List.hd premisesReversed)) -> 
					let answer = extract_env (List.nth (true_formula_getArguments (List.hd premisesReversed)) 1) in 
(*					let _ = print_string ("extracted from subtype info: " ^ dump answer) in *)
					answer
				| predname when (my_starts_with "updateStrong" predname) && input_is_about_state envVar (List.nth (true_formula_getArguments (List.hd premisesReversed)) 0) -> 
					let varName = var_getVarName (List.nth (true_formula_getArguments (List.hd premisesReversed)) 0) in 
						Term (Var ("Env" ^ varName))
				| _ -> search_for_env_in_prems (List.tl l) in 
			search_for_env_in_prems premisesReversed 			
			end
		(* old begin match eval_getTerm (eval lan t1), eval_getTerm (eval lan t2) with Var state, Var env -> Term(Constructor("consEnv" ^ (trim_numbers state), [Var ("LNew" ^ (trim_numbers state)); Var "T"; Var env])) end *)
	| Can(t) -> begin match (eval lan t) with Term (Var var) -> Term (Var (trim_numbers var)) | ListOfTerms(l) -> ListOfTerms (List.map (fun a -> eval_getTerm (eval lan (Can(a)))) l) end 
	| FindVar(t1,t2) -> (* at the moment FindVar does not return the correct index *)	
			let varname = match (eval lan t1) with | Term (Var var) -> var | Term (Constructor(_,[Var var])) -> var in (* reasons up to a var in a constructor like (labelH L) *)
			let premises = List.map (fun (LNPFormula(f,_)) -> f) (eval_getListOfTerms (eval lan t2)) in 
			let varsInPremises = List.concat (List.map formula_getVars premises) in 
			(* let _ = print_string ("FindVar " ^ varname ^ " in " ^ (dump varsInPremises) ^ "\n") in *)
			if List.mem varname varsInPremises then Number 0 else Term (Var "")			
(*	OLD, when you were testing manually
					begin match (eval lan t1) with 
						| Term (Var "H'") -> Number 0 
						| Term (Var "LNewM") -> Number 1 
						| Term (Constructor(_,[Var "LNewH"])) -> Number 0 
						| Term (Constructor(_,[Var "LNewM"])) -> Number 1 
						| Term (Constructor(_,[Var "L"])) -> Number 1 
						| e -> Term (Var "") (* returns a Term rather than Number when not found.. this is an error. But FindVarTest can detect this. *) 
					end
*)					

	| FindVarTest(t1,t2) -> begin match eval lan (FindVar(t1, t2)) with | Term(_) -> Boolean false | _  -> Boolean true end
	(* At the moment, it is fixed that you make a new cons with L T Rest *)
	(* old: Term(Constructor("cons" ^ var, [eval_getTerm (eval lan t2) ; eval_getTerm (eval lan t3) ; eval_getTerm (eval lan t4)] *)
	| MakeCons(t1, t2, t3, t4) -> begin match (eval lan t1) with Term (Var var) -> Term(Constructor("cons" ^ var, [Var "L" ; Var "T" ; Var "Rest"])) end
	| InductiveArgs(t1, t2) -> 
								let ajdust_by_ignoring_type_annotations l = if not(l = []) && List.hd l = Num(-1) then List.map (fun (Num(x)) -> Num(x - 1)) l else l in 
								ListOfTerms( 
									(List.filter (fun (Num a) -> a > -1) (ajdust_by_ignoring_type_annotations (List.mapi (fun i (Var metavar) -> if metavar.[0] = 'E' then Num i else if (metavar.[0] = 'T' || (is_environment_metavar metavar)) then Num(-1) else Num(-100)) (Lnp.term_getArguments (eval_getTerm (eval lan t1))))))
								)
	| IsLabel(t) -> begin match eval lan t with Term(Var(metavar)) -> if metavar.[0] = 'L' then Boolean(true) else Boolean(false) end
	| Irrelevant(t) -> begin match eval lan t, eval lan (States(false)) with  Term(Var("H")), ListOfTerms(l) when List.length l > 1 -> Boolean(true) | _ -> Boolean(false) end
		
	let compile_lnp_name lan lnp_name = match lnp_name with 
	| SuffixedString(str, evaluatedExpression) -> let suffix = begin match eval lan evaluatedExpression with 
														| Term((Constructor(cname, [Var var]))) when my_starts_with "label" cname -> var
														| Term((Constructor(cname, ts))) -> cname
														| Term(Var var) -> var
														| Term(LNPFormula(formula, n)) -> string_of_int n
														| Number(n) -> string_of_int n
														| ListOfTerms l -> if l = []	
															then raise(Failure("compile_lnp_name: LNP name used with a list as suffix, but the list is empty. Name started with " ^ str)) 
															(* the match is designed to return a suffix, so we return "Store1 TypeOfStore2  TypeOfStore3 ..."  *)
															else 
																(* let _ = raise(Failure("lnp name with list: " ^ dump l)) in *)
																let lOnlyNames = begin match List.hd l with Var(_) -> List.map var_getVarName l | Num(_) -> List.map (fun (Num n) -> string_of_int n) l end in 
																List.hd lOnlyNames ^ " " ^ String.concat " " (List.map (fun s -> str ^ s) (List.tl lOnlyNames))
														| _ -> "Wrong term computed as suffix to append to a name"
														end
													in String (str ^ suffix)
	| _ -> lnp_name
	
let rec compile_formula lan formula = match formula with 
	| Top -> Top
	| True -> True
	| Bottom -> Bottom
	| Formula(lnp_name, predname, ts) -> let compiledArgs = List.concat (List.map eval_createListFromTermAndListOfTerm (List.map (eval lan) ts)) in 
		(* if compile_lnp_name lan lnp_name = String "Main" then raise(Failure(dump compiledArgs)) else *)
		Formula(compile_lnp_name lan lnp_name, predname, compiledArgs)
	| Forall(var2, formula) -> Forall(var2, compile_formula lan formula)
	| Exists(var2, formula) -> Exists(var2, compile_formula lan formula)
	| ForallVars(t, formula) -> makeForall (term_getVars (eval_getTerm (eval lan t))) (compile_formula lan formula)
	| ExistsVars(t, formula) -> makeExists (term_getVars (eval_getTerm (eval lan t))) (compile_formula lan formula)
	| EqualFormula(t1, t2) -> EqualFormula(eval_getTerm (eval lan t1), eval_getTerm (eval lan t2))
	| OrMacro(var2, t, formula) -> let formulaeInstantiated = List.map (substitution_formula formula var2) (eval_getListOfTerms (eval lan t)) in makeOr (List.map (compile_formula lan) formulaeInstantiated)
	| AndMacro(var2, t, formula) -> let formulaeInstantiated = List.map (substitution_formula formula var2) (eval_getListOfTerms (eval lan t)) in makeAnd (List.map (compile_formula lan) formulaeInstantiated)
	| ImplyMacro(var2, t, formula) -> let formulaeInstantiated = List.map (substitution_formula formula var2) (eval_getListOfTerms (eval lan t)) in makeImply (List.map (compile_formula lan) formulaeInstantiated)
	| Imply(formula1, formula2) ->  if compile_formula lan formula2 = Top then compile_formula lan formula1 else Imply(compile_formula lan formula1, compile_formula lan formula2)
	| And(formula1, formula2) -> if compile_formula lan formula2 = Top then compile_formula lan formula1 else And(compile_formula lan formula1, compile_formula lan formula2)
	| Or(formula1, formula2) -> if compile_formula lan formula2 = Bottom then compile_formula lan formula1 else Or(compile_formula lan formula1, compile_formula lan formula2)
	(* for map state. reimplemented some for subtyping *)
	| ForallStar(formula) -> let f = (compile_formula lan formula) in let quantificationseverywhere = makeForall (formula_getVars f) f in formula_refine_quantifications quantificationseverywhere []
	| ExistsStar(formula) -> let f = (compile_formula lan formula) in let quantificationseverywhere = makeExists (formula_getVars f) f in formula_refine_quantifications quantificationseverywhere []
	(* for map state. reimplemented some for subtyping *)
	| FormulaTHM(lnp_name, lnp_predname, ts) -> let compiledArgs = List.concat (List.map eval_createListFromTermAndListOfTerm (List.map (eval lan) ts)) in 
		FormulaTHM(compile_lnp_name lan lnp_name, lnp_name_adjust_name (compile_lnp_name lan lnp_predname), compiledArgs)

		(* if the equality is something like env=[...] with a list such as EnvH envR etc.. then the new equalities are EnvH=EnvH, EnvR=EnvR  *)
let compile_one_equality lan (var, e) : (string * evaluatedExpression) list = match eval lan e with 
| Term(t) -> [(var, t)]
| ListOfTerms l -> List.map (fun (Var var2) -> (var2, Var var2)) l 
	

let rec compile_proof lan names proof = match proof with 
| Intros -> Intros
| Search -> Search
| NoOp -> NoOp
| Skip -> Skip
| DoNotGenerateThisProof -> DoNotGenerateThisProof
| Undo -> Undo
| Unfold -> Unfold
| Case(lnp_name1, lnp_name2) -> Case(compile_lnp_name lan lnp_name1, compile_lnp_name lan lnp_name2)
| Induction(lnp_name1, lnp_name2) -> Induction(compile_lnp_name lan lnp_name1,compile_lnp_name lan lnp_name2)
| Apply(lnp_name1, lnp_name2, lnp_names, equalities) -> let newEqualities = if is_none equalities then None else Some (List.concat (List.map (compile_one_equality lan) (get equalities))) in Apply(compile_lnp_name lan lnp_name1, compile_lnp_name lan lnp_name2, List.map (compile_lnp_name lan) lnp_names, newEqualities)
| Backchain(lnp_name) -> begin match lnp_name with 
	| SuffixedString(str, evaluatedExpression) ->  begin match eval lan evaluatedExpression with ListOfTerms l -> Backchain(compile_lnp_name lan (SuffixedString(str, (List.hd l)))) | _ -> Backchain(compile_lnp_name lan lnp_name) end 
	| _ -> Backchain(compile_lnp_name lan lnp_name)
	end
| If(t, proof1, proof2) -> if eval_getBoolean (eval lan t) then compile_proof lan names proof1 else compile_proof lan names proof2
| ForEachProof(var, t, proof) -> makeSeq (List.map (compile_proof lan names) (List.map (substitution_proof proof var) (eval_getListOfTerms (eval lan t))))
| Seq(proof1, proof2) -> if compile_proof lan names proof1 = NoOp then compile_proof lan names proof2 else Seq(compile_proof lan names proof1, compile_proof lan names proof2)
(* for map state *)
| Split -> Split
| Witness(t) -> Witness(eval_getTerm (eval lan t))
| Assert(f) -> Assert(compile_formula lan f)
| Clear lnp_name -> Clear(compile_lnp_name lan lnp_name)
| Let(hyp,t,lnp_name1,lnp_name2,p) -> let subst = if eval_getBoolean (eval lan t) then Var (lnp_name_getname (compile_lnp_name lan lnp_name1)) else Var (lnp_name_getname (compile_lnp_name lan lnp_name2)) in compile_proof lan names (substitution_proof p hyp subst)
	
let compileInstantiated lan schema = 
	ForEachThm(None, compile_lnp_name lan (schema_getTheoremName schema), compile_formula lan (schema_getTheorem schema), compile_proof lan (map_names_formulae_in_theorem (schema_getTheorem schema)) (schema_getProof schema))
	
let compile lan schema : schema list = 
	let (var, substList) : (string * (evaluatedExpression list)) = 
		if is_none (schema_getIteration schema) then (unusedVar, [Var "Just one element list"]) (* This is an ineffectul substitution, will create ONE version of the theorem *)
			else let (var, t) =  get (schema_getIteration schema) in (var, (eval_getListOfTerms (eval lan t)))
														(* substitution_schema also removes the Iteration part of the theorem (for each ...)  *)
		in List.filter remove_DoNotGenerateTheorems (List.map (compileInstantiated lan) (List.map (substitution_schema schema var) substList))
	
	

	(*	| Imply(formula1, formula2) ->  Imply(compile_formula lan formula1, compile_formula lan formula2)
		| And(formula1, formula2) -> And(compile_formula lan formula1, compile_formula lan formula2)
		| Or(formula1, formula2) -> Or(compile_formula lan formula1, compile_formula lan formula2)

let testManipulation lan schema = 
	match lan with Language(g1 :: g2 :: g3 :: rest, _) -> 
		match schema with ForEachThm(ite, lnp_name, formula, proof) -> 
			match g3 with GrammarLine(category, metavar, items) -> 
				match List.nth (Option.get items) 2 with Constr(opname,ts) -> 
					ForEachThm(ite, String opname, formula, proof) 
	*)
