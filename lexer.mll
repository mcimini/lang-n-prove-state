{
  open Lexing
  open Parser
  exception Error of string


let next_line lexbuf =
  let pos = lexbuf.lex_curr_p in
  lexbuf.lex_curr_p <-
    { pos with pos_bol = lexbuf.lex_curr_pos;
               pos_lnum = pos.pos_lnum + 1
    }

}

let var = ['a'-'z']['a'-'z' 'A'-'Z' '0'-'9' '_' '-' ''']*
let name = ['A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '-' ''']*


rule token = parse
    [' ' '\t']  { token lexbuf }
  | ['\r' '\n']  { next_line lexbuf; token lexbuf }
  | "for"               { FOR }
  | "each"               { EACH }
  | "in"           { IN }
  | ","               { COMMA }
  | "Theorem"               { THEOREM }
  | "_"            { UNDERSCORE }
  | "("             { LPAREN }
  | ")"             { RPAREN }
  | ":"               { COLON }
  | "forall"               { FORALL }
  | "."               { DOT }
  | "forallVars"               { FORALLVARS }
  | "->"            { IMPLY }
  | "existsVars"               { EXISTSVARS }
  | "="             { EQUAL }
  | "/\\"            { AND }
  | "AND"               { ANDMACRO }
  | "valuesOf"           { VALUESOF }
  | "valueArgs"           { VALUEARGS }
  | "ofType"           { OFTYPE }
  | "isSingleValue"           { ISSINGLEVALUE }
  | "targetsFromValue"           { TARGETV }
  | "targetsFromOp"           { TARGETOP }
  | "containsSubstitution"           { CONTAINSSUB }
  | "IMPLY"               { IMPLYMACRO }
  | "evaluationOrder"           { EVALORDER } 
  | "contextualArgs"           { CONTEXTARGS } 
  | "getArgs"           { GETARGS }
  | "Proof"           { PROOF }
  | "intros"             { INTROS }
  | "search"            { SEARCH }
  | "case"            { CASE }
  | "case*"            { CASESTAR }
  | "if"            { IF }
  | "then"            { THEN }
  | "else"            { ELSE }
  | "noOp"            { NOP }
  | "exists"               { EXISTS }
  | "induction"            { INDUCTION }
  | "induction*"            { INDUCTIONSTAR }
  | "on"             { ON }
  | "endfor"               { ENDFOR }
  | "apply"             { APPLY }
  | "to"             { TO }
  | "backchain"             { BACKCHAIN }
  | "isEliminationForm"           { ISELIM }
  | "isDerived"           { ISDERIVED }
  | "isErrorHandler"           { ISERRORHANDLER }
  | "getArgType"           { GETARGTYPE }
  | "\\/"            { OR }
  | "OR"               { ORMACRO }
  | "exists"               { EXISTS }
  | "isVar"               { ISVAR }
  | "is"               { IS }
  | "or"               { ORTERM }
  | "and"               { ANDTERM }
  | "not"               { NOTTERM }
  | "endOR"               { ENDOR }
  | "endAND"               { ENDAND }
  | "endIMPLY"               { ENDIMPLY }
  | "endif"               { ENDIF }
  | "skip"               { SKIP }
  | "true"               { TRUE }
  (* reimplemented some for subtyping *)
  | "forall*"               { FORALLSTAR }
  | "exists*"               { EXISTSSTAR }
  (* for map state *)
  | "isOperation"               { OPERATION }
  | "witness"               { WITNESS } 
  | "endwitness"               { ENDWITNESS } 
  | "split"               { SPLIT } 
  | "["               { LEFTSQUARE } 
  | "]"               { RIGHTSQUARE } 
  | "constructed"               { CONSTRUCTED } 
  | "whichArgIdx"               { WHICHARG } 
  | "whichArgIdxTest"               { WHICHARGTEST } 
  | "range"               { RANGE } 
  | "arity"               { ARITY } 
  | "extendsMapState"               { EXTENDSTATE } 
  | "with"               { WITH } 
  | "states"               { STATES } 
  | "weakstates"               { WEAKSTATES } 
  | "state_env"               { STATEENV } 
  | "prime"               { PRIME } 
  | "mapNewEntry"               { NEWENTRY } 
  | "can"               { CAN } 
  | "findVar"               { FINDVAR } 
  | "findVarTest"               { FINDVARTEST } 
  | "assert"               { ASSERT } 
  | "clear"               { CLEAR } 
  | "let"               { LET } 
  | var             { VAR (Lexing.lexeme lexbuf) }
  | name             { NAME (Lexing.lexeme lexbuf) }
  | ['0'-'9']+ as i { INT (int_of_string i) }  
  | eof             { EOF }
  | _
	    { raise (Error (Printf.sprintf "At offset %d: unexpected character %s.\n" (Lexing.lexeme_start lexbuf) (Lexing.lexeme lexbuf))) }
{
}
