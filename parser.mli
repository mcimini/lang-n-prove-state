
(* The type of tokens. *)

type token = 
  | WITNESS
  | WITH
  | WHICHARGTEST
  | WHICHARG
  | WEAKSTATES
  | VAR of (string)
  | VALUESOF
  | VALUEARGS
  | UNFOLD
  | UNDO
  | UNDERSCORE
  | TRUE
  | TO
  | THEOREM
  | THEN
  | TARGETV
  | TARGETOP
  | STATES
  | STATEENV
  | SPLIT
  | SKIP
  | SEARCH
  | RPAREN
  | RIGHTSQUARE
  | REFOF
  | RANGE
  | PROOF
  | PRIME
  | ORTERM
  | ORMACRO
  | OR
  | OPERATION
  | ONLY
  | ON
  | OFTYPE
  | NOTTERM
  | NOP
  | NEWENTRY
  | NAME of (string)
  | MAPENV
  | MAKECONS
  | LPAREN
  | LET
  | LEFTSQUARE
  | LABELOF
  | ISVAR
  | ISSINGLEVALUE
  | ISLABEL
  | ISERRORHANDLER
  | ISELIM
  | ISDERIVED
  | IS
  | IRRELEVANT
  | INTROS
  | INT of (int)
  | INDUCTIVEARGS
  | INDUCTIONSTAR
  | INDUCTION
  | IN
  | IMPLYMACRO
  | IMPLY
  | IF
  | GETARGTYPE
  | GETARGS
  | FORALLVARS
  | FORALLSTAR
  | FORALL
  | FOR
  | FINDVARTEST
  | FINDVAR
  | EXTENDSTATE
  | EXISTSVARS
  | EXISTSSTAR
  | EXISTS
  | EXCEPT
  | EVALORDER
  | EQUAL
  | EOF
  | ENDWITNESS
  | ENDOR
  | ENDIMPLY
  | ENDIF
  | ENDFOR
  | ENDAND
  | ELSE
  | EACH
  | DOT
  | DONOTGENERATE
  | CONTEXTARGS
  | CONTAINSSUB
  | CONSTRUCTED
  | COMMA
  | COLON
  | CLEAR
  | CASESTAR
  | CASE
  | CAN
  | BACKCHAIN
  | ASSERT
  | ARITY
  | APPLY
  | ANDTERM
  | ANDMACRO
  | AND
  | ALLENVS

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val mystring: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Lnp.schema)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Lnp.schema)
