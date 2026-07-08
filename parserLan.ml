
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WITH
    | VARX
    | VARTERM of (
# 8 "parserLan.mly"
       (string)
# 13 "parserLan.ml"
  )
    | VARLEX of (
# 7 "parserLan.mly"
       (string)
# 18 "parserLan.ml"
  )
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
    | INT of (
# 9 "parserLan.mly"
       (int)
# 54 "parserLan.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState176
  | MenhirState172
  | MenhirState167
  | MenhirState165
  | MenhirState164
  | MenhirState163
  | MenhirState162
  | MenhirState159
  | MenhirState158
  | MenhirState157
  | MenhirState156
  | MenhirState155
  | MenhirState154
  | MenhirState153
  | MenhirState151
  | MenhirState148
  | MenhirState147
  | MenhirState146
  | MenhirState145
  | MenhirState140
  | MenhirState139
  | MenhirState138
  | MenhirState137
  | MenhirState136
  | MenhirState135
  | MenhirState134
  | MenhirState133
  | MenhirState132
  | MenhirState131
  | MenhirState130
  | MenhirState128
  | MenhirState127
  | MenhirState125
  | MenhirState124
  | MenhirState123
  | MenhirState122
  | MenhirState121
  | MenhirState120
  | MenhirState118
  | MenhirState117
  | MenhirState115
  | MenhirState114
  | MenhirState113
  | MenhirState112
  | MenhirState111
  | MenhirState110
  | MenhirState109
  | MenhirState107
  | MenhirState106
  | MenhirState100
  | MenhirState94
  | MenhirState93
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState88
  | MenhirState87
  | MenhirState86
  | MenhirState85
  | MenhirState80
  | MenhirState79
  | MenhirState78
  | MenhirState77
  | MenhirState76
  | MenhirState74
  | MenhirState73
  | MenhirState70
  | MenhirState67
  | MenhirState66
  | MenhirState65
  | MenhirState58
  | MenhirState57
  | MenhirState56
  | MenhirState54
  | MenhirState53
  | MenhirState48
  | MenhirState47
  | MenhirState45
  | MenhirState44
  | MenhirState43
  | MenhirState42
  | MenhirState41
  | MenhirState39
  | MenhirState25
  | MenhirState21
  | MenhirState15
  | MenhirState2

# 1 "parserLan.mly"
  
  module Option = BatOption
  open Lnp
  open Language

# 178 "parserLan.ml"

let rec _menhir_reduce74 : _menhir_env -> ((('ttv_tail * _menhir_state) * (
# 7 "parserLan.mly"
       (string)
# 183 "parserLan.ml"
)) * _menhir_state * 'tv_list_term_) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s), (opname : (
# 7 "parserLan.mly"
       (string)
# 189 "parserLan.ml"
    ))), _, (ts : 'tv_list_term_)) = _menhir_stack in
    let _4 = () in
    let _1 = () in
    let _v : 'tv_term = 
# 92 "parserLan.mly"
  ( if opname = "num" then Constr("num", []) else Constr(opname, ts) )
# 196 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list___anonymous_3_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list___anonymous_3_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv737 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list___anonymous_3_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv735 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list___anonymous_3_) : 'tv_list___anonymous_3_) = _v in
        ((let ((_menhir_stack, _menhir_s), _, (t0 : 'tv_term)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_list___anonymous_3_ = let x =
          let t = t0 in
          let _1 = _10 in
          
# 125 "parserLan.mly"
                                                                                                                (t)
# 220 "parserLan.ml"
          
        in
        
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 226 "parserLan.ml"
         in
        _menhir_goto_list___anonymous_3_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv736)) : 'freshtv738)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv741 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_2_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list___anonymous_3_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv739 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_2_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((targetstates : 'tv_list___anonymous_3_) : 'tv_list___anonymous_3_) = _v in
        ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _, (sourcestates : 'tv_list___anonymous_2_)), _, (t2 : 'tv_term)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_formula = 
# 126 "parserLan.mly"
    ( Formula("step", (t1 :: (sourcestates)) @ (t2 :: (targetstates))) )
# 243 "parserLan.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv740)) : 'freshtv742)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_formula_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_formula_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv729) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv727) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_AND_formula_) : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_AND_formula__ = 
# 130 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x )
# 264 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_AND_formula__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv728)) : 'freshtv730)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv733 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv731 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_AND_formula_) : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_formula)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_formula_ = 
# 217 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 281 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_formula_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv732)) : 'freshtv734)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_AND_formula__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_AND_formula__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv725 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv721 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv719 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (f : 'tv_formula)), _, (xs0 : 'tv_loption_separated_nonempty_list_AND_formula__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_rule = let premises =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 309 "parserLan.ml"
          
        in
        
# 114 "parserLan.mly"
    ( Rule(premises,f) )
# 315 "parserLan.ml"
         in
        _menhir_goto_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv720)) : 'freshtv722)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv723 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv724)) : 'freshtv726)

and _menhir_goto_rule : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_rule -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv717 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState151
    | GAMMA ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState151
    | LEFTPAR ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState151
    | RETRIEVE ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState151
    | SET ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState151
    | USER ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState151
    | VALUECTX ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState151
    | VALUEPRED ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState151
    | VARBIGX ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState151
    | VARTERM _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
    | VARX ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState151
    | EOF ->
        _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState151
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv718)

and _menhir_goto_list_term_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_term_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv683 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv681 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_term)), _, (xs : 'tv_list_term_)) = _menhir_stack in
        let _v : 'tv_list_term_ = 
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 376 "parserLan.ml"
         in
        _menhir_goto_list_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv682)) : 'freshtv684)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv689 * _menhir_state) * (
# 7 "parserLan.mly"
       (string)
# 384 "parserLan.ml"
        )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv685 * _menhir_state) * (
# 7 "parserLan.mly"
       (string)
# 394 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce74 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv686)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv687 * _menhir_state) * (
# 7 "parserLan.mly"
       (string)
# 405 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv688)) : 'freshtv690)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv697 * _menhir_state)) * (
# 7 "parserLan.mly"
       (string)
# 414 "parserLan.ml"
        )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv693 * _menhir_state)) * (
# 7 "parserLan.mly"
       (string)
# 424 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv691 * _menhir_state)) * (
# 7 "parserLan.mly"
       (string)
# 431 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (predname : (
# 7 "parserLan.mly"
       (string)
# 436 "parserLan.ml"
            ))), _, (ts : 'tv_list_term_)) = _menhir_stack in
            let _5 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_formula = 
# 142 "parserLan.mly"
   ( Formula("user-defined", LangVar predname :: ts) )
# 444 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv692)) : 'freshtv694)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv695 * _menhir_state)) * (
# 7 "parserLan.mly"
       (string)
# 454 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv696)) : 'freshtv698)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv707 * _menhir_state) * (
# 7 "parserLan.mly"
       (string)
# 463 "parserLan.ml"
        )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv703 * _menhir_state) * (
# 7 "parserLan.mly"
       (string)
# 473 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA | LABELEDSTEP | LEFTARROW | LEFTSQUARE | NOSTEP | SEMICOLON | STEP | SUBTYPING ->
                _menhir_reduce74 _menhir_env (Obj.magic _menhir_stack)
            | AND | DOT | PROVIDED ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv699 * _menhir_state) * (
# 7 "parserLan.mly"
       (string)
# 485 "parserLan.ml"
                )) * _menhir_state * 'tv_list_term_)) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), (opname : (
# 7 "parserLan.mly"
       (string)
# 490 "parserLan.ml"
                ))), _, (ts : 'tv_list_term_)) = _menhir_stack in
                let _4 = () in
                let _1 = () in
                let _v : 'tv_formula = 
# 134 "parserLan.mly"
    ( Formula(opname, ts) )
# 497 "parserLan.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv700)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv701 * _menhir_state) * (
# 7 "parserLan.mly"
       (string)
# 507 "parserLan.ml"
                )) * _menhir_state * 'tv_list_term_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv702)) : 'freshtv704)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv705 * _menhir_state) * (
# 7 "parserLan.mly"
       (string)
# 518 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv706)) : 'freshtv708)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv715 * _menhir_state) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv711 * _menhir_state) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv709 * _menhir_state) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (l0 : 'tv_list_term_)) = _menhir_stack in
            let _30 = () in
            let _10 = () in
            let _v : 'tv_option___anonymous_4_ = let x =
              let _3 = _30 in
              let l = l0 in
              let _1 = _10 in
              
# 137 "parserLan.mly"
                                                                                                                   ( l )
# 544 "parserLan.ml"
              
            in
            
# 102 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( Some x )
# 550 "parserLan.ml"
             in
            _menhir_goto_option___anonymous_4_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv710)) : 'freshtv712)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv713 * _menhir_state) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv714)) : 'freshtv716)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list___anonymous_1_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list___anonymous_1_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv673 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_1_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv671 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_1_) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (t0 : 'tv_term)), _, (xs : 'tv_list___anonymous_1_)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_list___anonymous_1_ = let x =
          let t = t0 in
          let _1 = _10 in
          
# 119 "parserLan.mly"
                                                          (t)
# 580 "parserLan.ml"
          
        in
        
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 586 "parserLan.ml"
         in
        _menhir_goto_list___anonymous_1_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv672)) : 'freshtv674)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv679 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_1_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TURNSTYLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv675 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_1_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162) : 'freshtv676)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv677 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_1_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv678)) : 'freshtv680)
    | _ ->
        _menhir_fail ()

and _menhir_run158 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState158
    | LEFTPAR ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState158
    | VALUECTX ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState158
    | VARBIGX ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState158
    | VARTERM _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
    | VARX ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState158
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState158

and _menhir_reduce29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list___anonymous_3_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 655 "parserLan.ml"
     in
    _menhir_goto_list___anonymous_3_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run147 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | LEFTPAR ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | VALUECTX ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | VARBIGX ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | VARTERM _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
    | VARX ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147

and _menhir_goto_option___anonymous_4_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option___anonymous_4_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((((('freshtv669 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_option___anonymous_4_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((((('freshtv667 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((optExtra : 'tv_option___anonymous_4_) : 'tv_option___anonymous_4_) = _v in
    ((let (((((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t3 : 'tv_term)), _), _, (t4 : 'tv_term)), _), _, (t5 : 'tv_term)) = _menhir_stack in
    let _6 = () in
    let _4 = () in
    let _2 = () in
    let _v : 'tv_formula = 
# 138 "parserLan.mly"
    ( match t1 with LangVar(metavar) -> let formalState = LangVar(String.make 1 (String.get metavar 0)) in  if Option.is_some optExtra then Formula("extend", [t1 ; formalState ; t3 ; t4 ; t5] @ Option.get optExtra) else Formula("extend", [t1 ; formalState ; t3 ; t4 ; t5]) )
# 699 "parserLan.ml"
     in
    _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv668)) : 'freshtv670)

and _menhir_goto_list___anonymous_2_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list___anonymous_2_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv659 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_2_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv657 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_2_) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (t0 : 'tv_term)), _, (xs : 'tv_list___anonymous_2_)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_list___anonymous_2_ = let x =
          let t = t0 in
          let _1 = _10 in
          
# 125 "parserLan.mly"
                                                     (t)
# 720 "parserLan.ml"
          
        in
        
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 726 "parserLan.ml"
         in
        _menhir_goto_list___anonymous_2_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv658)) : 'freshtv660)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv665 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_2_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv661 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_2_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState145
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145) : 'freshtv662)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv663 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_2_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv664)) : 'freshtv666)
    | _ ->
        _menhir_fail ()

and _menhir_run114 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | LEFTPAR ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | VALUECTX ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | VARBIGX ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | VARTERM _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
    | VARX ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114

and _menhir_goto_separated_nonempty_list_COMMA___anonymous_6_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA___anonymous_6_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv651 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA___anonymous_6_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv649 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA___anonymous_6_) : 'tv_separated_nonempty_list_COMMA___anonymous_6_) = _v in
        ((let ((((_menhir_stack, _menhir_s, (t20 : 'tv_term)), _), _, (t30 : 'tv_term)), _) = _menhir_stack in
        let _2 = () in
        let _20 = () in
        let _v : 'tv_separated_nonempty_list_COMMA___anonymous_6_ = let x =
          let t3 = t30 in
          let _2 = _20 in
          let t2 = t20 in
          
# 145 "parserLan.mly"
                                                                                                                          ( [t2 ; t3])
# 812 "parserLan.ml"
          
        in
        
# 217 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 818 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA___anonymous_6_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv650)) : 'freshtv652)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv655) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA___anonymous_6_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv653) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA___anonymous_6_) : 'tv_separated_nonempty_list_COMMA___anonymous_6_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA___anonymous_6__ = 
# 130 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x )
# 833 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA___anonymous_6__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv654)) : 'freshtv656)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA___anonymous_6__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA___anonymous_6__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((((('freshtv647 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_6__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHTSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv643 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_6__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv641 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_6__) = Obj.magic _menhir_stack in
        ((let ((((((_menhir_stack, _menhir_s), _, (t1 : 'tv_term)), _), _, (tOfVarAffected : 'tv_term)), _), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA___anonymous_6__)) = _menhir_stack in
        let _8 = () in
        let _6 = () in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_formula = let lists =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 864 "parserLan.ml"
          
        in
        
# 146 "parserLan.mly"
   ( Formula("retrieve", t1 :: tOfVarAffected :: List.concat lists) )
# 870 "parserLan.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv642)) : 'freshtv644)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv645 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_6__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv646)) : 'freshtv648)

and _menhir_goto_separated_nonempty_list_COMMA___anonymous_5_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA___anonymous_5_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv635 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA___anonymous_5_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv633 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA___anonymous_5_) : 'tv_separated_nonempty_list_COMMA___anonymous_5_) = _v in
        ((let ((((_menhir_stack, _menhir_s, (t20 : 'tv_term)), _), _, (t30 : 'tv_term)), _) = _menhir_stack in
        let _2 = () in
        let _20 = () in
        let _v : 'tv_separated_nonempty_list_COMMA___anonymous_5_ = let x =
          let t3 = t30 in
          let _2 = _20 in
          let t2 = t20 in
          
# 143 "parserLan.mly"
                                                                                                    ( [t2 ; t3])
# 903 "parserLan.ml"
          
        in
        
# 217 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 909 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA___anonymous_5_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv634)) : 'freshtv636)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv639) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA___anonymous_5_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv637) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA___anonymous_5_) : 'tv_separated_nonempty_list_COMMA___anonymous_5_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__ = 
# 130 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x )
# 924 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA___anonymous_5__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv638)) : 'freshtv640)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA___anonymous_5__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv631 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHTSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv627 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv625 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (t1 : 'tv_term)), _), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__)) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_formula = let lists =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 954 "parserLan.ml"
          
        in
        
# 144 "parserLan.mly"
 ( Formula("set", List.concat lists @ [t1]) )
# 960 "parserLan.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv626)) : 'freshtv628)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv629 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv630)) : 'freshtv632)

and _menhir_goto_formula : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState65 | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv615 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv607 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv605 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (f : 'tv_formula)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_rule = 
# 112 "parserLan.mly"
    ( Rule([],f) )
# 992 "parserLan.ml"
             in
            _menhir_goto_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv606)) : 'freshtv608)
        | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv611 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | GAMMA ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | LEFTPAR ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | RETRIEVE ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | SET ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | USER ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | VALUEPRED ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState167
            | DOT ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv609) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState167 in
                ((let _v : 'tv_loption_separated_nonempty_list_AND_formula__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 1030 "parserLan.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_AND_formula__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv610)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167) : 'freshtv612)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv613 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv614)) : 'freshtv616)
    | MenhirState172 | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv623 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv617 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | GAMMA ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | LEFTPAR ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | RETRIEVE ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | SET ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | USER ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | VALUEPRED ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172) : 'freshtv618)
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv619 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_formula)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_formula_ = 
# 215 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [ x ] )
# 1089 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_formula_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv620)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv621 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv622)) : 'freshtv624)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_MID_term_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_MID_term_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv599 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv597 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_MID_term_) : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_term)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_MID_term_ = 
# 217 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 1119 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_MID_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv598)) : 'freshtv600)
    | MenhirState25 | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv603) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv601) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_MID_term_) : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_MID_term__ = 
# 130 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x )
# 1134 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv602)) : 'freshtv604)
    | _ ->
        _menhir_fail ()

and _menhir_run44 : _menhir_env -> (('ttv_tail * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LEFTPAR ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | VALUECTX ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | VARBIGX ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | VARTERM _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | VARX ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_term -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LEFTPAR ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | VALUECTX ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | VARBIGX ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | VARTERM _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | VARX ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_goto_list_rule_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_rule_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv581 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_rule_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv579 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_rule_) : 'tv_list_rule_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_rule)) = _menhir_stack in
        let _v : 'tv_list_rule_ = 
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 1202 "parserLan.ml"
         in
        _menhir_goto_list_rule_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv580)) : 'freshtv582)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv595 * 'tv_statedecl) * _menhir_state * 'tv_list_grammarLine_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_rule_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv593 * 'tv_statedecl) * _menhir_state * 'tv_list_grammarLine_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((rules : 'tv_list_rule_) : 'tv_list_rule_) = _v in
        ((let ((_menhir_stack, (states : 'tv_statedecl)), _, (grammar : 'tv_list_grammarLine_)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_language = 
# 78 "parserLan.mly"
    ( Language(states @ grammar, rules) )
# 1219 "parserLan.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv591) = _menhir_stack in
        let (_v : 'tv_language) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv589 * 'tv_language) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv585 * 'tv_language) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv583 * 'tv_language) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, (lan : 'tv_language)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 66 "parserLan.mly"
      (Language.language)
# 1240 "parserLan.ml"
            ) = 
# 74 "parserLan.mly"
    ( lan )
# 1244 "parserLan.ml"
             in
            _menhir_goto_fileLan _menhir_env _menhir_stack _v) : 'freshtv584)) : 'freshtv586)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv587 * 'tv_language) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv588)) : 'freshtv590)) : 'freshtv592)) : 'freshtv594)) : 'freshtv596)
    | _ ->
        _menhir_fail ()

and _menhir_goto_gamma : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_gamma -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv577 * _menhir_state * 'tv_gamma) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | TURNSTYLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv575 * _menhir_state * 'tv_gamma) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState153 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | LEFTPAR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | VALUECTX ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | VARBIGX ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | VARTERM _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
        | VARX ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154) : 'freshtv576)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153) : 'freshtv578)

and _menhir_goto_grammarLine : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_grammarLine -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv573 * _menhir_state * 'tv_grammarLine) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARTERM _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
    | DOT ->
        _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState176
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState176) : 'freshtv574)

and _menhir_run38 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHTPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv569 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LEFTPAR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | VALUECTX ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | VARBIGX ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | VARTERM _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | VARX ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv570)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv571 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv572)

and _menhir_reduce35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_term_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 1352 "parserLan.ml"
     in
    _menhir_goto_list_term_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run52 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHTPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv565 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | LEFTPAR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | VALUECTX ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | VARBIGX ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | VARTERM _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | VARX ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv566)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv567 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv568)

and _menhir_goto_term : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_term -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv391 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | AND | AT | COLON | COMMA | DOT | EXPCTX | GRAMMARASSIGN | LABELEDSTEP | LEFTARROW | LEFTPAR | MAPSTO | MID | NOSTEP | PLUS | PROVIDED | RIGHTPAR | RIGHTSQUARE | SEMICOLON | STEP | SUBSTBAR | SUBTYPING | TURNSTYLE | VALUECTX | VARBIGX | VARTERM _ | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv389 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_term = 
# 100 "parserLan.mly"
    ( Abs(t) )
# 1413 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv390)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv392)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv393 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SUBSTBAR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv394)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv399 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | RIGHTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv397 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState45 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv395 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _), _, (t3 : 'tv_term)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_term = 
# 108 "parserLan.mly"
      ( Substitution(t1,t2,t3) )
# 1457 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)) : 'freshtv398)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv400)
    | MenhirState140 | MenhirState100 | MenhirState70 | MenhirState48 | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv401 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LEFTPAR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | VALUECTX ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | VARBIGX ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | VARTERM _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | VARX ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | RIGHTPAR ->
            _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv402)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv405 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | AND | AT | COLON | COMMA | DOT | EXPCTX | GRAMMARASSIGN | LABELEDSTEP | LEFTARROW | LEFTPAR | MAPSTO | MID | NOSTEP | PLUS | PROVIDED | RIGHTPAR | RIGHTSQUARE | SEMICOLON | STEP | SUBSTBAR | SUBTYPING | TURNSTYLE | VALUECTX | VARBIGX | VARTERM _ | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv403 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_term = 
# 102 "parserLan.mly"
   ( AbsType(t) )
# 1508 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv406)
    | MenhirState25 | MenhirState58 | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv411 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | MID ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv407 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState57 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv408)
        | DOT | VARTERM _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv409 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_term)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_MID_term_ = 
# 215 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [ x ] )
# 1554 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_MID_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv412)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv415 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv413 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_formula = 
# 128 "parserLan.mly"
 ( Formula("value", [t]) )
# 1577 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv416)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv425 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GRAMMARASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv423 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState74 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LEFTSQUARE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv419 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EXPCTX ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | LEFTPAR ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | VALUECTX ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | VARBIGX ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | VARTERM _v ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
                | VARX ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | RIGHTSQUARE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv417) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState76 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 1623 "parserLan.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA___anonymous_5__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv420)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv421 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv422)) : 'freshtv424)
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv426)
    | MenhirState80 | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv429 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState77
        | MAPSTO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv427 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState77 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv428)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv430)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv435 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv431 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState79 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState80
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv432)
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | RIGHTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv433 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t20 : 'tv_term)), _), _, (t30 : 'tv_term)) = _menhir_stack in
            let _20 = () in
            let _v : 'tv_separated_nonempty_list_COMMA___anonymous_5_ = let x =
              let t3 = t30 in
              let _2 = _20 in
              let t2 = t20 in
              
# 143 "parserLan.mly"
                                                                                                    ( [t2 ; t3])
# 1723 "parserLan.ml"
              
            in
            
# 215 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [ x ] )
# 1729 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA___anonymous_5_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv436)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv439 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv437 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState86 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv438)
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv440)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv449 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | MAPSTO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv447 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState88 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LEFTSQUARE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv443 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EXPCTX ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | LEFTPAR ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | VALUECTX ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | VARBIGX ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | VARTERM _v ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
                | VARX ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | RIGHTSQUARE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv441) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState90 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA___anonymous_6__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 1813 "parserLan.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA___anonymous_6__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv442)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv444)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv445 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv446)) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv450)
    | MenhirState94 | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv453 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv451 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState91 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv452)
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv454)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv459 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv455 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState93 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv456)
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | RIGHTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv457 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t20 : 'tv_term)), _), _, (t30 : 'tv_term)) = _menhir_stack in
            let _20 = () in
            let _v : 'tv_separated_nonempty_list_COMMA___anonymous_6_ = let x =
              let t3 = t30 in
              let _2 = _20 in
              let t2 = t20 in
              
# 145 "parserLan.mly"
                                                                                                                          ( [t2 ; t3])
# 1911 "parserLan.ml"
              
            in
            
# 215 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [ x ] )
# 1917 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA___anonymous_6_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv460)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv463 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | SEMICOLON | TURNSTYLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv461 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_gamma = 
# 152 "parserLan.mly"
    ( Constr("gammaAddx", [t]) )
# 1943 "parserLan.ml"
             in
            _menhir_goto_gamma _menhir_env _menhir_stack _menhir_s _v) : 'freshtv462)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv464)
    | MenhirState172 | MenhirState167 | MenhirState151 | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv477 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv465 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState109 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv466)
        | LABELEDSTEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv467 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState109 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv468)
        | LEFTARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv469 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState109 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv470)
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | NOSTEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv471 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState109 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv472)
        | SEMICOLON ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv473 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState109 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState112
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv474)
        | SUBTYPING ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv475 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState109 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv476)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv478)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv481 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv479 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 122 "parserLan.mly"
    ( Formula("subtype", [t1 ; t2]) )
# 2124 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv480)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv482)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv485 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv483 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 124 "parserLan.mly"
    ( Formula("step", [t1 ; t2]) )
# 2147 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv484)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv486)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv489 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | SEMICOLON ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv487) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState115 in
            ((let _v : 'tv_list___anonymous_2_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 2171 "parserLan.ml"
             in
            _menhir_goto_list___anonymous_2_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv490)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv495 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv493 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState118 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv491 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
# 132 "parserLan.mly"
    ( Formula("nstep", [t1 ; t2]) )
# 2200 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv492)) : 'freshtv494)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv496)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv501 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv497 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState121 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv498)
        | LEFTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv499 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState121 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv500)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv502)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv505 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | MAPSTO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv503 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState123 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124) : 'freshtv504)
        | SUBSTBAR ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv506)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv511 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | RIGHTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv509 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState125 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv507 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t3 : 'tv_term)), _), _, (t4 : 'tv_term)), _), _, (t5 : 'tv_term)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
# 140 "parserLan.mly"
    ( match t1 with LangVar(metavar) -> let formalState = LangVar(String.make 1 (String.get metavar 0)) in  match t4 with LangVar(metavarKey) -> if metavarKey.[0] = 'L' then Formula("update", [t1 ; formalState ; t3 ; t4 ; t5 ]) else Formula("updateStrong", [t1 ; formalState ; t3 ; t4 ; t5 ]) )
# 2327 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv508)) : 'freshtv510)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv512)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv517 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv515 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState128 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv513 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _), _, (t4 : 'tv_term)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
# 136 "parserLan.mly"
    ( match t2 with LangVar(metavar) -> let formalState = LangVar(String.make 1 (String.get metavar 0)) in Formula("lookup", [t1 ; t2 ; formalState ; t4]) )
# 2357 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)) : 'freshtv516)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv518)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv521 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv519 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState131 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState132
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState132
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState132
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState132
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState132
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132) : 'freshtv520)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv522)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv525 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv523 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _), _, (t3 : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
# 130 "parserLan.mly"
    ( Formula("step", [t1 ; t2 ; t3]) )
# 2417 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv524)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133) : 'freshtv526)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv529 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv527 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState135 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136) : 'freshtv528)
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv530)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv533 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | PLUS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv531 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState137 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138) : 'freshtv532)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv534)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv539 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv535) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState139 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState140
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState140
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState140
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState140
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState140
            | RIGHTPAR ->
                _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState140
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140) : 'freshtv536)
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState139
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv537) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState139 in
            ((let _v : 'tv_option___anonymous_4_ = 
# 100 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( None )
# 2537 "parserLan.ml"
             in
            _menhir_goto_option___anonymous_4_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv538)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139) : 'freshtv540)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv541 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_2_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | SEMICOLON ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | AND | DOT | PROVIDED ->
            _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState146
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState146) : 'freshtv542)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv543 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | SEMICOLON ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | AND | DOT | PROVIDED ->
            _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148) : 'freshtv544)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv547 * _menhir_state * 'tv_gamma) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv545 * _menhir_state * 'tv_gamma) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState155 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156) : 'freshtv546)
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155) : 'freshtv548)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv551 * _menhir_state * 'tv_gamma) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState157
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv549 * _menhir_state * 'tv_gamma) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, (gammaTerm : 'tv_gamma)), _), _, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
# 118 "parserLan.mly"
 ( Formula("typeOf", [gammaTerm ; t1 ; t2]) )
# 2629 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv550)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState157) : 'freshtv552)
    | MenhirState158 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv555 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | SEMICOLON ->
            _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | TURNSTYLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv553) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState159 in
            ((let _v : 'tv_list___anonymous_1_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 2653 "parserLan.ml"
             in
            _menhir_goto_list___anonymous_1_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv554)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv556)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv559 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_1_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv557 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_1_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState163 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164) : 'freshtv558)
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState163
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState163) : 'freshtv560)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv563 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_1_)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState165
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv561 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_1_)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, (gammaTerm : 'tv_gamma)), _, (otherEnvs : 'tv_list___anonymous_1_)), _, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _v : 'tv_formula = 
# 120 "parserLan.mly"
  ( Formula("typeOf", (gammaTerm :: (otherEnvs @ [t1 ; t2]))) )
# 2713 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv562)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState165) : 'freshtv564)
    | _ ->
        _menhir_fail ()

and _menhir_reduce33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_rule_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 2728 "parserLan.ml"
     in
    _menhir_goto_list_rule_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run66 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LEFTPAR ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | VALUECTX ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | VARBIGX ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | VARTERM _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | VARX ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFTPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv385 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VARLEX _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv381 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 7 "parserLan.mly"
       (string)
# 2773 "parserLan.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LEFTPAR ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | RIGHTPAR ->
                _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv383 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | LEFTPAR ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | VALUECTX ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | VARBIGX ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | VARTERM _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | VARX ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_run85 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | LEFTPAR ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | VALUECTX ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | VARBIGX ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | VARTERM _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | VARX ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85

and _menhir_run99 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARBIGX ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
    | VARLEX _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv377 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 7 "parserLan.mly"
       (string)
# 2872 "parserLan.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | LEFTPAR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | VALUECTX ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | VARBIGX ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | VARTERM _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | VARX ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | RIGHTPAR ->
            _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv378)
    | VARX ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv379 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv380)

and _menhir_run103 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv371 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VARBIGX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv361 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv359 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_gamma = 
# 154 "parserLan.mly"
 ( Constr("gammaAddX", []) )
# 2931 "parserLan.ml"
             in
            _menhir_goto_gamma _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)) : 'freshtv362)
        | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv367 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv363 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EXPCTX ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | LEFTPAR ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | VALUECTX ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | VARBIGX ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | VARTERM _v ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
                | VARX ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState106
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv364)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv365 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)) : 'freshtv368)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv369 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv370)) : 'freshtv372)
    | SEMICOLON | TURNSTYLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv373 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_gamma = 
# 150 "parserLan.mly"
    ( LangVar "Gamma" )
# 2984 "parserLan.ml"
         in
        _menhir_goto_gamma _menhir_env _menhir_stack _menhir_s _v) : 'freshtv374)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv375 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)

and _menhir_goto_loption_separated_nonempty_list_MID_term__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_MID_term__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv353) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv351) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((xs0 : 'tv_loption_separated_nonempty_list_MID_term__) : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let _v : 'tv_option_separated_list_MID_term__ = let x =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 3012 "parserLan.ml"
          
        in
        
# 102 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( Some x )
# 3018 "parserLan.ml"
         in
        _menhir_goto_option_separated_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)) : 'freshtv354)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv357 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3026 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv355 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3034 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs0 : 'tv_loption_separated_nonempty_list_MID_term__) : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let ((_menhir_stack, _menhir_s, (category : (
# 8 "parserLan.mly"
       (string)
# 3041 "parserLan.ml"
        ))), (metavar : 'tv_option_VARTERM_)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_grammarLine = let ts =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 3049 "parserLan.ml"
          
        in
        
# 159 "parserLan.mly"
 ( GrammarLine(category,metavar, Some ts) )
# 3055 "parserLan.ml"
         in
        _menhir_goto_grammarLine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option___anonymous_7_ : _menhir_env -> 'ttv_tail -> 'tv_option___anonymous_7_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((((('freshtv349 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3067 "parserLan.ml"
    )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 8 "parserLan.mly"
       (string)
# 3071 "parserLan.ml"
    ))) * (
# 8 "parserLan.mly"
       (string)
# 3075 "parserLan.ml"
    ))) = Obj.magic _menhir_stack in
    let (_v : 'tv_option___anonymous_7_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((((('freshtv347 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3082 "parserLan.ml"
    )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 8 "parserLan.mly"
       (string)
# 3086 "parserLan.ml"
    ))) * (
# 8 "parserLan.mly"
       (string)
# 3090 "parserLan.ml"
    ))) = Obj.magic _menhir_stack in
    let ((strong : 'tv_option___anonymous_7_) : 'tv_option___anonymous_7_) = _v in
    ((let (((((_menhir_stack, _menhir_s, (category : (
# 8 "parserLan.mly"
       (string)
# 3096 "parserLan.ml"
    ))), (metavar : 'tv_option_VARTERM_)), _), (key : (
# 8 "parserLan.mly"
       (string)
# 3100 "parserLan.ml"
    ))), (value : (
# 8 "parserLan.mly"
       (string)
# 3104 "parserLan.ml"
    ))) = _menhir_stack in
    let _8 = () in
    let _6 = () in
    let _4 = () in
    let _3 = () in
    let _v : 'tv_grammarLine = 
# 161 "parserLan.mly"
 ( GrammarLine(category, metavar, Some [lang_make_map key value strong]) )
# 3113 "parserLan.ml"
     in
    _menhir_goto_grammarLine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)) : 'freshtv350)

and _menhir_goto_option_separated_list_MID_term__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_separated_list_MID_term__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv345 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3123 "parserLan.ml"
    )) * 'tv_option_VARTERM_)) * _menhir_state)) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_option_separated_list_MID_term__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv343 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3131 "parserLan.ml"
    )) * 'tv_option_VARTERM_)) * _menhir_state)) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((ts : 'tv_option_separated_list_MID_term__) : 'tv_option_separated_list_MID_term__) = _v in
    ((let (((_menhir_stack, _menhir_s, (category : (
# 8 "parserLan.mly"
       (string)
# 3138 "parserLan.ml"
    ))), (metavar : 'tv_option_VARTERM_)), _) = _menhir_stack in
    let _5 = () in
    let _4 = () in
    let _3 = () in
    let _v : 'tv_grammarLine = 
# 163 "parserLan.mly"
 ( if category = "C" then GrammarLine("Context",Some "C",ts) else GrammarLine(category,metavar,ts) )
# 3146 "parserLan.ml"
     in
    _menhir_goto_grammarLine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv344)) : 'freshtv346)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv341) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 94 "parserLan.mly"
    ( BoundVar )
# 3160 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parserLan.mly"
       (string)
# 3167 "parserLan.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv339) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((var : (
# 8 "parserLan.mly"
       (string)
# 3177 "parserLan.ml"
    )) : (
# 8 "parserLan.mly"
       (string)
# 3181 "parserLan.ml"
    )) = _v in
    ((let _v : 'tv_term = 
# 98 "parserLan.mly"
    ( LangVar(var) )
# 3186 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv337) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 96 "parserLan.mly"
    ( BoundTypeVar )
# 3200 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv335) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 104 "parserLan.mly"
      ( LangVar "v" )
# 3214 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARBIGX ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
    | VARLEX _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 7 "parserLan.mly"
       (string)
# 3232 "parserLan.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | LEFTPAR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | VALUECTX ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | VARBIGX ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | VARTERM _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | VARX ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | RIGHTPAR ->
            _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv332)
    | VARX ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv333 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv329) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 106 "parserLan.mly"
      ( LangVar "e" )
# 3276 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv330)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_list_grammarLine_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_grammarLine_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv323 * 'tv_statedecl) * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv319 * 'tv_statedecl) * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | GAMMA ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | LEFTPAR ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | RETRIEVE ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | SET ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | USER ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | VALUECTX ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | VALUEPRED ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | VARBIGX ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | VARTERM _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | VARX ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | EOF ->
                _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv320)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv321 * 'tv_statedecl) * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)) : 'freshtv324)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv327 * _menhir_state * 'tv_grammarLine) * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv325 * _menhir_state * 'tv_grammarLine) * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_grammarLine)), _, (xs : 'tv_list_grammarLine_)) = _menhir_stack in
        let _v : 'tv_list_grammarLine_ = 
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 3345 "parserLan.ml"
         in
        _menhir_goto_list_grammarLine_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)) : 'freshtv328)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_VARTERM_ : _menhir_env -> 'ttv_tail -> 'tv_option_VARTERM_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv317 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3358 "parserLan.ml"
    )) * 'tv_option_VARTERM_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | GRAMMARASSIGN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv313 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3368 "parserLan.ml"
        )) * 'tv_option_VARTERM_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EMPTYCTX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3378 "parserLan.ml"
            )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState25 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | MID ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv279 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3390 "parserLan.ml"
                )) * 'tv_option_VARTERM_)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EXPCTX ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | LEFTPAR ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | VALUECTX ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | VARBIGX ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | VARTERM _v ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
                | VARX ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | DOT ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv277) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState56 in
                    ((let _v : 'tv_option_separated_list_MID_term__ = 
# 100 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( None )
# 3414 "parserLan.ml"
                     in
                    _menhir_goto_option_separated_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv280)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv281 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3428 "parserLan.ml"
                )) * 'tv_option_VARTERM_)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)) : 'freshtv284)
        | EXPCTX ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LEFTPAR ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LEFTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv309 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3441 "parserLan.ml"
            )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState25 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VARTERM _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv305 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3453 "parserLan.ml"
                )) * 'tv_option_VARTERM_)) * _menhir_state) = Obj.magic _menhir_stack in
                let (_v : (
# 8 "parserLan.mly"
       (string)
# 3458 "parserLan.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | MAPSTO ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv301 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3469 "parserLan.ml"
                    )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 8 "parserLan.mly"
       (string)
# 3473 "parserLan.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | VARTERM _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv297 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3483 "parserLan.ml"
                        )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 8 "parserLan.mly"
       (string)
# 3487 "parserLan.ml"
                        ))) = Obj.magic _menhir_stack in
                        let (_v : (
# 8 "parserLan.mly"
       (string)
# 3492 "parserLan.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | RIGHTSQUARE ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv293 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3503 "parserLan.ml"
                            )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 8 "parserLan.mly"
       (string)
# 3507 "parserLan.ml"
                            ))) * (
# 8 "parserLan.mly"
       (string)
# 3511 "parserLan.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | STRONG ->
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : 'freshtv287) = Obj.magic _menhir_stack in
                                ((let _menhir_env = _menhir_discard _menhir_env in
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : 'freshtv285) = Obj.magic _menhir_stack in
                                ((let _10 = () in
                                let _v : 'tv_option___anonymous_7_ = let x =
                                  let _1 = _10 in
                                  
# 160 "parserLan.mly"
                                                                                                                                                   ( true )
# 3528 "parserLan.ml"
                                  
                                in
                                
# 102 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( Some x )
# 3534 "parserLan.ml"
                                 in
                                _menhir_goto_option___anonymous_7_ _menhir_env _menhir_stack _v) : 'freshtv286)) : 'freshtv288)
                            | DOT | VARTERM _ ->
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : 'freshtv289) = Obj.magic _menhir_stack in
                                ((let _v : 'tv_option___anonymous_7_ = 
# 100 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( None )
# 3543 "parserLan.ml"
                                 in
                                _menhir_goto_option___anonymous_7_ _menhir_env _menhir_stack _v) : 'freshtv290)
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : ((((((('freshtv291 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3553 "parserLan.ml"
                                )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 8 "parserLan.mly"
       (string)
# 3557 "parserLan.ml"
                                ))) * (
# 8 "parserLan.mly"
       (string)
# 3561 "parserLan.ml"
                                ))) = Obj.magic _menhir_stack in
                                ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv295 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3572 "parserLan.ml"
                            )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 8 "parserLan.mly"
       (string)
# 3576 "parserLan.ml"
                            ))) * (
# 8 "parserLan.mly"
       (string)
# 3580 "parserLan.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)) : 'freshtv298)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv299 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3591 "parserLan.ml"
                        )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 8 "parserLan.mly"
       (string)
# 3595 "parserLan.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv303 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3606 "parserLan.ml"
                    )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 8 "parserLan.mly"
       (string)
# 3610 "parserLan.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv307 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3621 "parserLan.ml"
                )) * 'tv_option_VARTERM_)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)) : 'freshtv310)
        | VALUECTX ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | VARBIGX ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | VARTERM _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | VARX ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv311) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState25 in
            ((let _v : 'tv_loption_separated_nonempty_list_MID_term__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 3640 "parserLan.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv314)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv315 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3654 "parserLan.ml"
        )) * 'tv_option_VARTERM_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)) : 'freshtv318)

and _menhir_goto_separated_nonempty_list_COMMA_stateOnedecl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_stateOnedecl_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv271 * _menhir_state * 'tv_stateOnedecl)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_stateOnedecl_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv269 * _menhir_state * 'tv_stateOnedecl)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_stateOnedecl_) : 'tv_separated_nonempty_list_COMMA_stateOnedecl_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_stateOnedecl)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_stateOnedecl_ = 
# 217 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 3676 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_stateOnedecl_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)) : 'freshtv272)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_stateOnedecl_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_stateOnedecl_) : 'tv_separated_nonempty_list_COMMA_stateOnedecl_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_stateOnedecl__ = 
# 130 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x )
# 3691 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_stateOnedecl__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)) : 'freshtv276)
    | _ ->
        _menhir_fail ()

and _menhir_reduce31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_grammarLine_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 3702 "parserLan.ml"
     in
    _menhir_goto_list_grammarLine_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parserLan.mly"
       (string)
# 3709 "parserLan.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARTERM _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "parserLan.mly"
       (string)
# 3722 "parserLan.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261) = Obj.magic _menhir_stack in
        let ((x : (
# 8 "parserLan.mly"
       (string)
# 3730 "parserLan.ml"
        )) : (
# 8 "parserLan.mly"
       (string)
# 3734 "parserLan.ml"
        )) = _v in
        ((let _v : 'tv_option_VARTERM_ = 
# 102 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( Some x )
# 3739 "parserLan.ml"
         in
        _menhir_goto_option_VARTERM_ _menhir_env _menhir_stack _v) : 'freshtv262)) : 'freshtv264)
    | GRAMMARASSIGN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_VARTERM_ = 
# 100 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( None )
# 3748 "parserLan.ml"
         in
        _menhir_goto_option_VARTERM_ _menhir_env _menhir_stack _v) : 'freshtv266)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3758 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)

and _menhir_goto_stateOnedecl : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stateOnedecl -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv259 * _menhir_state * 'tv_stateOnedecl) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state * 'tv_stateOnedecl) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VARTERM _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv254)
    | RIGHTCURLY ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state * 'tv_stateOnedecl) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_stateOnedecl)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_stateOnedecl_ = 
# 215 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [ x ] )
# 3790 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_stateOnedecl_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257 * _menhir_state * 'tv_stateOnedecl) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)) : 'freshtv260)

and _menhir_goto_option___anonymous_0_ : _menhir_env -> 'ttv_tail -> 'tv_option___anonymous_0_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv251 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3807 "parserLan.ml"
    )) * (
# 8 "parserLan.mly"
       (string)
# 3811 "parserLan.ml"
    ))))) * (
# 8 "parserLan.mly"
       (string)
# 3815 "parserLan.ml"
    )) = Obj.magic _menhir_stack in
    let (_v : 'tv_option___anonymous_0_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv249 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 3822 "parserLan.ml"
    )) * (
# 8 "parserLan.mly"
       (string)
# 3826 "parserLan.ml"
    ))))) * (
# 8 "parserLan.mly"
       (string)
# 3830 "parserLan.ml"
    )) = Obj.magic _menhir_stack in
    let ((strong : 'tv_option___anonymous_0_) : 'tv_option___anonymous_0_) = _v in
    ((let (((_menhir_stack, _menhir_s, (category : (
# 8 "parserLan.mly"
       (string)
# 3836 "parserLan.ml"
    ))), (metavar : (
# 8 "parserLan.mly"
       (string)
# 3840 "parserLan.ml"
    ))), (key : (
# 8 "parserLan.mly"
       (string)
# 3844 "parserLan.ml"
    ))) = _menhir_stack in
    let _5 = () in
    let _4 = () in
    let _3 = () in
    let _v : 'tv_stateOnedecl = 
# 88 "parserLan.mly"
 ( GrammarLine(category, Some(metavar), Some [lang_make_map key "E" strong]) )
# 3852 "parserLan.ml"
     in
    _menhir_goto_stateOnedecl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)) : 'freshtv252)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state * 'tv_grammarLine) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv81 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_1_)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv83 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_1_)) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv85 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_1_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv87 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_1_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState158 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv93 * _menhir_state * 'tv_gamma) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv95 * _menhir_state * 'tv_gamma) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state * 'tv_gamma) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * 'tv_gamma) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * 'tv_gamma) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv109 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_2_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_2_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv115 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv117 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv119 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv121 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv127 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv129 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv135 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv137 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv139 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv141 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv143 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv145 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv147 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv153 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv155 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv169 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv171 * _menhir_state)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state) * (
# 7 "parserLan.mly"
       (string)
# 4109 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv175 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv177 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv179 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv183 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv185 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv187 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv193 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv201 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv207 * _menhir_state)) * (
# 7 "parserLan.mly"
       (string)
# 4198 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv213 * 'tv_statedecl) * _menhir_state * 'tv_list_grammarLine_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv219 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 4232 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv221 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv223 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state) * (
# 7 "parserLan.mly"
       (string)
# 4256 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv229 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv231 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv233 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv237 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv239 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv241 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 4295 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * 'tv_statedecl) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv244)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state * 'tv_stateOnedecl)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv247)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv248)

and _menhir_goto_loption_separated_nonempty_list_COMMA_stateOnedecl__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_stateOnedecl__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv73)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_stateOnedecl__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHTCURLY ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv69)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_stateOnedecl__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_stateOnedecl__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_stateOnedecl__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_statedecl = let statelines =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 4336 "parserLan.ml"
          
        in
        
# 82 "parserLan.mly"
  ( statelines )
# 4342 "parserLan.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65) = _menhir_stack in
        let (_v : 'tv_statedecl) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * 'tv_statedecl) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VARTERM _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | DOT ->
            _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv64)) : 'freshtv66)) : 'freshtv68)) : 'freshtv70)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_stateOnedecl__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parserLan.mly"
       (string)
# 4372 "parserLan.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARTERM _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 4384 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "parserLan.mly"
       (string)
# 4389 "parserLan.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv53 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 4400 "parserLan.ml"
            )) * (
# 8 "parserLan.mly"
       (string)
# 4404 "parserLan.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | KEY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv49 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 4414 "parserLan.ml"
                )) * (
# 8 "parserLan.mly"
       (string)
# 4418 "parserLan.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EQUAL ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv45 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 4428 "parserLan.ml"
                    )) * (
# 8 "parserLan.mly"
       (string)
# 4432 "parserLan.ml"
                    )))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | VARTERM _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv41 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 4442 "parserLan.ml"
                        )) * (
# 8 "parserLan.mly"
       (string)
# 4446 "parserLan.ml"
                        ))))) = Obj.magic _menhir_stack in
                        let (_v : (
# 8 "parserLan.mly"
       (string)
# 4451 "parserLan.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | LEFTPAR ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | STRONG ->
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
                                ((let _menhir_env = _menhir_discard _menhir_env in
                                let _tok = _menhir_env._menhir_token in
                                match _tok with
                                | UPDATES ->
                                    let (_menhir_env : _menhir_env) = _menhir_env in
                                    let (_menhir_stack : ('freshtv27)) = Obj.magic _menhir_stack in
                                    ((let _menhir_env = _menhir_discard _menhir_env in
                                    let _tok = _menhir_env._menhir_token in
                                    match _tok with
                                    | RIGHTPAR ->
                                        let (_menhir_env : _menhir_env) = _menhir_env in
                                        let (_menhir_stack : (('freshtv23))) = Obj.magic _menhir_stack in
                                        ((let _menhir_env = _menhir_discard _menhir_env in
                                        let (_menhir_env : _menhir_env) = _menhir_env in
                                        let (_menhir_stack : (('freshtv21))) = Obj.magic _menhir_stack in
                                        ((let _40 = () in
                                        let _30 = () in
                                        let _20 = () in
                                        let _10 = () in
                                        let _v : 'tv_option___anonymous_0_ = let x =
                                          let _4 = _40 in
                                          let _3 = _30 in
                                          let _2 = _20 in
                                          let _1 = _10 in
                                          
# 87 "parserLan.mly"
                                                                                                                       ( true )
# 4493 "parserLan.ml"
                                          
                                        in
                                        
# 102 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( Some x )
# 4499 "parserLan.ml"
                                         in
                                        _menhir_goto_option___anonymous_0_ _menhir_env _menhir_stack _v) : 'freshtv22)) : 'freshtv24)
                                    | _ ->
                                        assert (not _menhir_env._menhir_error);
                                        _menhir_env._menhir_error <- true;
                                        let (_menhir_env : _menhir_env) = _menhir_env in
                                        let (_menhir_stack : (('freshtv25))) = Obj.magic _menhir_stack in
                                        (raise _eRR : 'freshtv26)) : 'freshtv28)
                                | _ ->
                                    assert (not _menhir_env._menhir_error);
                                    _menhir_env._menhir_error <- true;
                                    let (_menhir_env : _menhir_env) = _menhir_env in
                                    let (_menhir_stack : ('freshtv29)) = Obj.magic _menhir_stack in
                                    (raise _eRR : 'freshtv30)) : 'freshtv32)
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : 'freshtv33) = Obj.magic _menhir_stack in
                                (raise _eRR : 'freshtv34)) : 'freshtv36)
                        | COMMA | RIGHTCURLY ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
                            ((let _v : 'tv_option___anonymous_0_ = 
# 100 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( None )
# 4526 "parserLan.ml"
                             in
                            _menhir_goto_option___anonymous_0_ _menhir_env _menhir_stack _v) : 'freshtv38)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv39 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 4536 "parserLan.ml"
                            )) * (
# 8 "parserLan.mly"
       (string)
# 4540 "parserLan.ml"
                            ))))) * (
# 8 "parserLan.mly"
       (string)
# 4544 "parserLan.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)) : 'freshtv42)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv43 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 4555 "parserLan.ml"
                        )) * (
# 8 "parserLan.mly"
       (string)
# 4559 "parserLan.ml"
                        ))))) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)) : 'freshtv46)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv47 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 4570 "parserLan.ml"
                    )) * (
# 8 "parserLan.mly"
       (string)
# 4574 "parserLan.ml"
                    )))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)) : 'freshtv50)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv51 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 4585 "parserLan.ml"
                )) * (
# 8 "parserLan.mly"
       (string)
# 4589 "parserLan.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)) : 'freshtv54)
        | COMMA | RIGHTCURLY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv55 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 4598 "parserLan.ml"
            )) * (
# 8 "parserLan.mly"
       (string)
# 4602 "parserLan.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (category : (
# 8 "parserLan.mly"
       (string)
# 4607 "parserLan.ml"
            ))), (metavar : (
# 8 "parserLan.mly"
       (string)
# 4611 "parserLan.ml"
            ))) = _menhir_stack in
            let _v : 'tv_stateOnedecl = 
# 86 "parserLan.mly"
 ( GrammarLine(category, Some(metavar), Some [lang_make_map "L" "E" (None)]) )
# 4616 "parserLan.ml"
             in
            _menhir_goto_stateOnedecl _menhir_env _menhir_stack _menhir_s _v) : 'freshtv56)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv57 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 4626 "parserLan.ml"
            )) * (
# 8 "parserLan.mly"
       (string)
# 4630 "parserLan.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)) : 'freshtv60)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state * (
# 8 "parserLan.mly"
       (string)
# 4641 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)

and _menhir_goto_fileLan : _menhir_env -> 'ttv_tail -> (
# 66 "parserLan.mly"
      (Language.language)
# 4649 "parserLan.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
    let (_v : (
# 66 "parserLan.mly"
      (Language.language)
# 4657 "parserLan.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let ((_1 : (
# 66 "parserLan.mly"
      (Language.language)
# 4664 "parserLan.ml"
    )) : (
# 66 "parserLan.mly"
      (Language.language)
# 4668 "parserLan.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv18)) : 'freshtv20)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and fileLan : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 66 "parserLan.mly"
      (Language.language)
# 4687 "parserLan.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        ((let _1 = () in
        let _v : (
# 66 "parserLan.mly"
      (Language.language)
# 4715 "parserLan.ml"
        ) = 
# 72 "parserLan.mly"
    ( Language([], []) )
# 4719 "parserLan.ml"
         in
        _menhir_goto_fileLan _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4)
    | STATEDECL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTCURLY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VARTERM _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
            | RIGHTCURLY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState2 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_stateOnedecl__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 4743 "parserLan.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_stateOnedecl__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv8)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv10)) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv14)) : 'freshtv16))

# 219 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
  


# 4767 "parserLan.ml"
