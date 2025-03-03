
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
  | UNDERSCORE
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
  | RANGE
  | PROOF
  | PRIME
  | ORTERM
  | ORMACRO
  | OR
  | OPERATION
  | ON
  | OFTYPE
  | NOTTERM
  | NOP
  | NEWENTRY
  | NAME of (string)
  | LPAREN
  | LET
  | LEFTSQUARE
  | ISVAR
  | ISSINGLEVALUE
  | ISERRORHANDLER
  | ISELIM
  | ISDERIVED
  | IS
  | INTROS
  | INT of (int)
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

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val mystring: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Lnp.schema)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Lnp.schema)
