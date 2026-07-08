
(* The type of tokens. *)

type token = 
  | WITH
  | VARX
  | VARTERM of (string)
  | VARLEX of (string)
  | VARBIGX
  | VALUEPRED
  | VALUECTX
  | USER
  | UPDATES
  | TURNSTYLE
  | SUBTYPING
  | SUBSTBAR
  | STRONG
  | STEP
  | STATEDECL
  | SET
  | SEMICOLON
  | RSQUARE
  | RIGHTSQUARE
  | RIGHTPAR
  | RIGHTCURLY
  | RETRIEVE
  | PROVIDED
  | PLUS
  | OR
  | NOSTEP
  | MID
  | MAPSTO
  | LSQUARE
  | LEFTSQUARE
  | LEFTPAR
  | LEFTCURLY
  | LEFTARROW
  | LABELEDSTEP
  | KEY
  | INT of (int)
  | GRAMMARASSIGN
  | GAMMA
  | EXPCTX
  | EQUAL
  | EOF
  | EMPTYCTX
  | DOT
  | DIRECTIVE
  | COMMA
  | COLON
  | AT
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val fileLan: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Language.language)
