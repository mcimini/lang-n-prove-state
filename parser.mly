%{
  open Lnp
%}

%token <string> VAR
%token <string> NAME
%token <int> INT

%token FOR
%token EACH
%token IN
%token COMMA
%token THEOREM
%token UNDERSCORE
%token LPAREN
%token RPAREN
%token COLON
%token FORALL
%token DOT
%token FORALLVARS
%token IMPLY
%token ORMACRO
%token EXISTSVARS
%token EQUAL
%token AND
%token TRUE
%token ANDMACRO
%token VALUESOF
%token VALUEARGS
%token OFTYPE
%token ISSINGLEVALUE
%token TARGETV
%token TARGETOP
%token CONTAINSSUB
%token IMPLYMACRO
%token EVALORDER
%token CONTEXTARGS
%token GETARGS
%token PROOF
%token INTROS
%token SEARCH
%token CASE
%token CASESTAR
%token IF
%token THEN
%token ELSE
%token NOP
%token INDUCTION
%token INDUCTIONSTAR
%token ON
%token ENDFOR
%token APPLY
%token TO
%token BACKCHAIN
%token ISELIM
%token ISDERIVED
%token ISERRORHANDLER
%token GETARGTYPE
%token OR
%token EXISTS
%token ISVAR
%token IS
%token ORTERM
%token ANDTERM
%token NOTTERM
%token ENDOR
%token ENDAND
%token ENDIMPLY
%token ENDIF
%token SKIP

%left IMPLYMACRO

%token FORALLSTAR
%token EXISTSSTAR


(* for map state  *)

%token OPERATION
%token WITNESS
%token ENDWITNESS
%token SPLIT
%token LEFTSQUARE
%token RIGHTSQUARE
%token CONSTRUCTED
%token WHICHARG
%token WHICHARGTEST
%token RANGE
%token ARITY
%token EXTENDSTATE
%token WITH
%token STATES
%token WEAKSTATES
%token STATEENV
%token PRIME
%token NEWENTRY
%token CAN
%token FINDVAR
%token FINDVARTEST
%token ASSERT
%token CLEAR
%token LET

%token EOF

%start file
%type <Lnp.schema> file

%start mystring
%type <Lnp.schema> mystring

%%

file:
  | EOF
    { ForEachThm(None, String "", Bottom, NoOp) } /*    { Uninstantiated theorem } */
    /*    { [] } */
  | e = schema EOF
    { e }

mystring:
  | e = schema
    { e }
  | EOF
    { ForEachThm(None, String "", Bottom, NoOp) } /*    { Uninstantiated theorem } */
  | e = schema EOF
  	{ e }

schema:
  | FOR EACH var = VAR IN t = evalExp COMMA
        THEOREM name = lnp_name COLON 
		f = formula DOT
		PROOF DOT p = proof 
		{ ForEachThm(Some(var, t), name, f, p) } 
    | THEOREM name = lnp_name COLON 
  		f = formula DOT
        PROOF DOT p = proof 
  		{ ForEachThm(None, name, f, p) }


evalExp:
  | name = NAME
    { Name name }
  | var = VAR
    { Var var }
  | num = INT
    { Num num }
  | LPAREN opname = VAR es = list(evalExp) RPAREN /* (opname t1 ... tn)   opname is VAR */
    { Constructor(opname, es) }
  | VALUESOF LPAREN t = evalExp RPAREN
    { ValuesOf t }
  | VALUEARGS LPAREN t = evalExp RPAREN
      { ValueArgs t }
  | OFTYPE LPAREN t = evalExp RPAREN
      { OfType t }
  | ISVAR LPAREN t = evalExp RPAREN
      { IsVar t }
  | ISSINGLEVALUE LPAREN t = evalExp RPAREN
      { IsSingleValue t }
  | TARGETV LPAREN t = evalExp RPAREN
      { TargetV t }
  | TARGETOP LPAREN t = evalExp RPAREN
      { TargetOp t }
  | CONTAINSSUB LPAREN t = evalExp RPAREN
      { ContainsSub t }
  | EVALORDER LPAREN t = evalExp RPAREN
      { EvaluationOrder t }
  | CONTEXTARGS LPAREN t = evalExp RPAREN
      { ContextualArgs t }
  | GETARGS LPAREN t1 = evalExp COMMA t2 = evalExp RPAREN
      { GetArgs(t1, t2) }
  | ISELIM LPAREN t = evalExp RPAREN
      { IsEliminationForm t }
  | ISERRORHANDLER LPAREN t = evalExp RPAREN
      { IsErrorHandler t }
  | GETARGTYPE LPAREN t1 = evalExp COMMA t2 = evalExp RPAREN
	  { GetArgType(t1, t2) }
  | OPERATION LPAREN t = evalExp RPAREN
      { IsOperation t }
  | CONSTRUCTED LPAREN t = evalExp RPAREN
      { Constructed t } 
  | RANGE LPAREN t = evalExp RPAREN
      { Range t } 
  | ARITY LPAREN t = evalExp RPAREN
      { Arity t } 
  | WHICHARG LPAREN t1 = evalExp COMMA t2 = evalExp RPAREN
	  { WhichArg(t1, t2) }
  | WHICHARGTEST LPAREN t1 = evalExp COMMA t2 = evalExp RPAREN
	  { WhichArgTest(t1, t2) }
  | EXTENDSTATE LPAREN t1 = evalExp COMMA t2 = evalExp RPAREN
      { ExtendState(t1, t2) } 
  | t1 = evalExp IN t2 = evalExp 
      { InList(t1,t2) }
  | var = VAR IS t = evalExp 
      { IS(Var var,t) }
  | LPAREN e1 = evalExp EQUAL e2 = evalExp RPAREN
      { EqualTerm(e1,e2) }
  | STATES
      { States(false) }
  | WEAKSTATES
      { States(true) }
  | STATEENV LPAREN t = evalExp RPAREN
      { StateEnv t } 
  | PRIME LPAREN t = evalExp RPAREN
      { Prime t } 
  | NEWENTRY LPAREN t1 = evalExp COMMA t2 = evalExp RPAREN
      { MapNewEntry(t1,t2) } 
  | CAN LPAREN t = evalExp RPAREN
      { Can t } 
  | FINDVAR LPAREN t1 = evalExp COMMA t2 = evalExp RPAREN
      { FindVar(t1,t2) } 
  | FINDVARTEST LPAREN t1 = evalExp COMMA t2 = evalExp RPAREN
      { FindVarTest(t1,t2) } 
  | t = evalExp DOT field = VAR LEFTSQUARE predname = VAR RIGHTSQUARE  
      { Dot(t, field, predname) }
  | t1 = evalExp ORTERM t2 = evalExp 
      { OrTerm(t1,t2) }
  | t1 = evalExp ANDTERM t2 = evalExp 
      { AndTerm(t1,t2) }
  | NOTTERM LPAREN t = evalExp RPAREN 
      { NotTerm(t) }

lnp_name:
	| UNDERSCORE
  		{String "_" }
	| name = NAME
	  {String name }
 	| name = NAME UNDERSCORE LPAREN t = evalExp RPAREN
      {SuffixedString(name,t) }



formula:
	| LPAREN name = lnp_name COLON predname = VAR es = list(evalExp) RPAREN
    	{ Formula(name, predname, es) }  
	| LPAREN name = lnp_name COLON EQUAL predname = lnp_name EQUAL es = list(evalExp) RPAREN
    	{ FormulaTHM(name, predname, es) }  
    | FORALL var = VAR COMMA f = formula
        { Forall(var, f) }
    | EXISTS var = VAR COMMA f = formula
        { Forall(var, f) }
	| FORALLVARS LPAREN t = evalExp RPAREN COMMA f = formula
	    { ForallVars(t,f) }
  	| EXISTSVARS LPAREN t = evalExp RPAREN COMMA f = formula
  	    { ExistsVars(t,f) }
  	| FORALLSTAR COMMA f = formula
  	    { ForallStar(f) }
  	| EXISTSSTAR COMMA f = formula
  	    { ExistsStar(f) }
    | ORMACRO LPAREN var = VAR IN t = evalExp RPAREN COLON f = formula option(ENDOR)
  	    { OrMacro(var,t,f) }
    | ANDMACRO LPAREN var = VAR IN t = evalExp RPAREN COLON f = formula option(ENDAND)
    	{ AndMacro(var,t,f) }
    | IMPLYMACRO LPAREN var = VAR IN t = evalExp RPAREN COLON f = formula option(ENDIMPLY)
    	{ ImplyMacro(var,t,f) }
    | LPAREN var = VAR EQUAL e2 = evalExp RPAREN
        { EqualFormula(Var(var),e2) }
    | f1 = formula IMPLY f2 = formula
        { Imply(f1, f2) }
    | f1 = formula AND f2 = formula
        { And(f1, f2) }

proof:
  | INTROS 
    { Intros }
  | SEARCH 
    { Search }
  | NOP 
    { NoOp }
  | SKIP
    { Skip }
  | SPLIT
    { Split }
  | name1 = lnp_name COLON CASE name2 = lnp_name 
    { Case(name1, name2) }
  | name1 = lnp_name COLON INDUCTION ON name2 = lnp_name 
    { Induction(name1, name2) }
  | name1 = lnp_name COLON APPLY name2 = lnp_name TO names = list(lnp_name) equalities = option(WITH var = VAR EQUAL e = evalExp DOT { [(var,e)] } )
      { Apply(name1, name2, names, equalities) }
  | BACKCHAIN ON name = lnp_name 
      { Backchain(name) }
  | WITNESS e = evalExp option(ENDWITNESS)
      { Witness e }
  | ASSERT f = formula 
      { Assert f }
  | CLEAR name = lnp_name 
    { Clear(name) }
  | IF t = evalExp THEN p1 = proof ELSE p2 = proof option(ENDIF)
	  { If(t, p1, p2) }
  | FOR EACH var = VAR IN t = evalExp COLON p = proof ENDFOR
      { ForEachProof(var, t, p) }
  | LET hyp = NAME EQUAL t = evalExp COLON name1 = lnp_name COLON name2 = lnp_name IN p = proof
      { Let(hyp,t,name1,name2,p) } 
  | p1 = proof DOT p2 = proof
      { Seq(p1, p2) }

