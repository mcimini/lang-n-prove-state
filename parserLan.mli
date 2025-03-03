
(* The type of tokens. *)

type token = 
  | VARX
  | VARTERM of (string)
  | VARLEX of (string)
  | VARBIGX
  | VALUEPRED
  | VALUECTX
  | USER
  | TURNSTYLE
  | SUBTYPING
  | SUBSTBAR
  | STRONG
  | STEP
  | SET
  | SEMICOLON
  | RSQUARE
  | RIGHTSQUARE
  | RIGHTPAR
  | RETRIEVE
  | PROVIDED
  | PLUS
  | NOSTEP
  | MID
  | MAPSTO
  | LSQUARE
  | LEFTSQUARE
  | LEFTPAR
  | LEFTARROW
  | LABELEDSTEP
  | INT of (int)
  | GRAMMARASSIGN
  | GAMMA
  | EXPCTX
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
