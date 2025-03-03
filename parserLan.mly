%{
  open Language
%}

%token <string> VARLEX
%token <string> VARTERM
%token <int> INT
%token GRAMMARASSIGN
%token MID
%token COMMA
%token PROVIDED
%token COLON
%token TURNSTYLE
%token AND
%token LEFTPAR  
%token RIGHTPAR 
%token EMPTYCTX 
%token DOT 
%token STEP 
%token VALUECTX 
%token EXPCTX 
%token GAMMA 
%token VARX 
%token VARBIGX 
%token LEFTSQUARE 
%token RIGHTSQUARE 
%token SUBSTBAR 
%token VALUEPRED 
%token DIRECTIVE 
%token SUBTYPING 
%token SEMICOLON

(* the following is for PROCESS ALGEBRA *)
%token LABELEDSTEP 
%token NOSTEP 

(* the following is for MAP STATE *)
%token LSQUARE 
%token RSQUARE 
%token MAPSTO 
%token LEFTARROW
%token PLUS
%token AT
%token STRONG
%token USER
%token SET
%token RETRIEVE


%left EXEC

%token EOF

%start fileLan
%type <Language.language> fileLan

%%

fileLan:
  | EOF
    { Language([], []) }
  | lan = language EOF
    { lan }

language :
	| grammar = list(grammarLine) DOT rules = list(rule) 
  		{ Language(grammar, rules) }
 
term :  
  | LEFTPAR opname = VARLEX ts = list(term) RIGHTPAR	
    { Constr(opname, ts) } 
  | VARX
    { BoundVar }
  | VARBIGX
    { BoundTypeVar }
  | var = VARTERM
    { LangVar(var) }
  | LEFTPAR VARX RIGHTPAR t = term      
    { Abs(t) }  
  | LEFTPAR VARBIGX RIGHTPAR t = term     
  	{ AbsType(t) } 
  | VALUECTX
      { LangVar "v" } 
  | EXPCTX
      { LangVar "e" } 
  | t1 = term LEFTSQUARE t2 = term SUBSTBAR t3 = term RIGHTSQUARE
      { Substitution(t1,t2,t3) } 

rule : 
  | f = formula DOT
    { Rule([],f) }
  | f = formula PROVIDED premises = separated_list(AND, formula) DOT
    { Rule(premises,f) }

formula : 
  | gammaTerm = gamma TURNSTYLE t1 = term COLON t2 = term
	{ Formula("typeOf", [gammaTerm ; t1 ; t2]) }
  | gammaTerm = gamma otherEnvs = list(SEMICOLON t = term {t}) TURNSTYLE t1 = term COLON t2 = term
  { Formula("typeOf", (gammaTerm :: (otherEnvs @ [t1 ; t2]))) }
  | t1 = term SUBTYPING t2 = term 
    { Formula("subtype", [t1 ; t2]) }
  | t1 = term STEP t2 = term 
    { Formula("step", [t1 ; t2]) }
  | t1 = term sourcestates = list(SEMICOLON t = term {t}) STEP t2 = term targetstates = list(SEMICOLON t = term {t})
    { Formula("step", (t1 :: (sourcestates)) @ (t2 :: (targetstates))) }
  | VALUEPRED t = term 
	{ Formula("value", [t]) }
  | t1 = term LABELEDSTEP t2 = term STEP t3 = term 
    { Formula("step", [t1 ; t2 ; t3]) }
  | t1 = term NOSTEP t2 = term STEP
    { Formula("nstep", [t1 ; t2]) }
  | LEFTPAR opname = VARLEX ts = list(term) RIGHTPAR
    { Formula(opname, ts) }
  | t1 = term LEFTARROW t2 = term AT t3 = term LEFTPAR t4 = term RIGHTPAR
    { Formula("lookup", [t1 ; t2 ; t3 ; t4]) }
  | t1 = term AT t2 = term COMMA t3 = term LEFTARROW t4 = term PLUS t5 = term 
    { Formula("add", [t1 ; t2 ; t3 ; t4 ; t5]) }
  | t1 = term AT t2 = term num = option(COMMA num = INT { num }) LEFTARROW t3 = term LEFTSQUARE t4 = term MAPSTO t5 = term RIGHTSQUARE
    { if Option.is_some num then Formula("updateStrong", [t1 ; t2 ; t3 ; t4 ; t5 ; LangVar (string_of_int (Option.get num)) ]) else Formula("update", [t1 ; t2 ; t3 ; t4 ; t5 ]) }
  | USER LEFTPAR predname = VARLEX ts = list(term) RIGHTPAR
  	{ Formula("user-defined", LangVar predname :: ts) }
  | SET t1 = term GRAMMARASSIGN LEFTSQUARE lists = separated_list(COMMA, t2 = term MAPSTO t3 = term { [t2 ; t3]}) RIGHTSQUARE
	{ Formula("set", List.concat lists @ [t1]) }
  | RETRIEVE t1 = term AT tOfVarAffected = term MAPSTO LEFTSQUARE lists = separated_list(COMMA, t2 = term COLON t3 = term { [t2 ; t3]}) RIGHTSQUARE
  	{ Formula("retrieve", t1 :: tOfVarAffected :: List.concat lists) }

gamma : 
  | GAMMA 
    { LangVar "Gamma" }
  | GAMMA COMMA VARX COLON t = term
    { Constr("gammaAddx", [t]) }
  | GAMMA COMMA VARBIGX 
	{ Constr("gammaAddX", []) }


grammarLine : 
	| category = VARTERM metavar = option(VARTERM) GRAMMARASSIGN ts = separated_list(MID, term)	
	{ GrammarLine(category,metavar, Some ts) }
	| category = VARTERM metavar = option(VARTERM) GRAMMARASSIGN LEFTSQUARE key = VARTERM MAPSTO value = VARTERM RIGHTSQUARE strong = option(STRONG | { true }) 
	{ GrammarLine(category, metavar, Some [lang_make_map key value strong]) }
	| category = VARTERM metavar = option(VARTERM) GRAMMARASSIGN EMPTYCTX MID ts = option(separated_list(MID, term))	
	{ if category = "C" then GrammarLine("Context",Some "C",ts) else GrammarLine(category,metavar,ts) }

directives : 
	| DIRECTIVE list(tagInfo) DOT	
	{ true }
	| DIRECTIVE list(tagInfo) rule	
	{ true }

tagInfo : 
	| VARLEX	
	| VARTERM
	| INT	
	| COLON	
	{ true }
  