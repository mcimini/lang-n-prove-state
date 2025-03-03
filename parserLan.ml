
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VARX
    | VARTERM of (
# 6 "parserLan.mly"
       (string)
# 12 "parserLan.ml"
  )
    | VARLEX of (
# 5 "parserLan.mly"
       (string)
# 17 "parserLan.ml"
  )
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
    | INT of (
# 7 "parserLan.mly"
       (int)
# 47 "parserLan.ml"
  )
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
  | MenhirState162
  | MenhirState156
  | MenhirState151
  | MenhirState149
  | MenhirState148
  | MenhirState147
  | MenhirState146
  | MenhirState143
  | MenhirState142
  | MenhirState141
  | MenhirState140
  | MenhirState139
  | MenhirState138
  | MenhirState137
  | MenhirState135
  | MenhirState132
  | MenhirState131
  | MenhirState130
  | MenhirState129
  | MenhirState126
  | MenhirState125
  | MenhirState124
  | MenhirState123
  | MenhirState122
  | MenhirState121
  | MenhirState119
  | MenhirState118
  | MenhirState117
  | MenhirState116
  | MenhirState115
  | MenhirState113
  | MenhirState112
  | MenhirState111
  | MenhirState110
  | MenhirState109
  | MenhirState108
  | MenhirState107
  | MenhirState105
  | MenhirState104
  | MenhirState103
  | MenhirState102
  | MenhirState101
  | MenhirState100
  | MenhirState98
  | MenhirState97
  | MenhirState95
  | MenhirState94
  | MenhirState93
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState89
  | MenhirState87
  | MenhirState86
  | MenhirState80
  | MenhirState74
  | MenhirState73
  | MenhirState72
  | MenhirState71
  | MenhirState70
  | MenhirState68
  | MenhirState67
  | MenhirState66
  | MenhirState65
  | MenhirState60
  | MenhirState59
  | MenhirState58
  | MenhirState57
  | MenhirState56
  | MenhirState54
  | MenhirState53
  | MenhirState50
  | MenhirState47
  | MenhirState46
  | MenhirState45
  | MenhirState37
  | MenhirState36
  | MenhirState35
  | MenhirState33
  | MenhirState32
  | MenhirState27
  | MenhirState26
  | MenhirState24
  | MenhirState23
  | MenhirState22
  | MenhirState21
  | MenhirState20
  | MenhirState18
  | MenhirState4
  | MenhirState0

# 1 "parserLan.mly"
  
  open Language

# 171 "parserLan.ml"

let rec _menhir_reduce64 : _menhir_env -> ((('ttv_tail * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 176 "parserLan.ml"
)) * _menhir_state * 'tv_list_term_) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s), (opname : (
# 5 "parserLan.mly"
       (string)
# 182 "parserLan.ml"
    ))), _, (ts : 'tv_list_term_)) = _menhir_stack in
    let _4 = () in
    let _1 = () in
    let _v : 'tv_term = 
# 71 "parserLan.mly"
    ( Constr(opname, ts) )
# 189 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list___anonymous_2_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list___anonymous_2_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv667 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list___anonymous_2_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv665 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list___anonymous_2_) : 'tv_list___anonymous_2_) = _v in
        ((let ((_menhir_stack, _menhir_s), _, (t0 : 'tv_term)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_list___anonymous_2_ = let x =
          let t = t0 in
          let _1 = _10 in
          
# 104 "parserLan.mly"
                                                                                                                (t)
# 213 "parserLan.ml"
          
        in
        
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 219 "parserLan.ml"
         in
        _menhir_goto_list___anonymous_2_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv666)) : 'freshtv668)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv671 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_1_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list___anonymous_2_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv669 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_1_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((targetstates : 'tv_list___anonymous_2_) : 'tv_list___anonymous_2_) = _v in
        ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _, (sourcestates : 'tv_list___anonymous_1_)), _, (t2 : 'tv_term)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_formula = 
# 105 "parserLan.mly"
    ( Formula("step", (t1 :: (sourcestates)) @ (t2 :: (targetstates))) )
# 236 "parserLan.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv670)) : 'freshtv672)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_formula_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_formula_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv659) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv657) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_AND_formula_) : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_AND_formula__ = 
# 130 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x )
# 257 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_AND_formula__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv658)) : 'freshtv660)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv663 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv661 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_AND_formula_) : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_formula)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_formula_ = 
# 217 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 274 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_formula_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv662)) : 'freshtv664)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_AND_formula__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_AND_formula__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv655 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv651 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv649 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (f : 'tv_formula)), _, (xs0 : 'tv_loption_separated_nonempty_list_AND_formula__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_rule = let premises =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 302 "parserLan.ml"
          
        in
        
# 93 "parserLan.mly"
    ( Rule(premises,f) )
# 308 "parserLan.ml"
         in
        _menhir_goto_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv650)) : 'freshtv652)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv653 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv654)) : 'freshtv656)

and _menhir_goto_rule : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_rule -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv647 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | GAMMA ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | LEFTPAR ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | RETRIEVE ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | SET ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | USER ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | VALUECTX ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | VALUEPRED ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | VARBIGX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | VARTERM _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
    | VARX ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | EOF ->
        _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState135
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv648)

and _menhir_goto_list_term_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_term_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv621 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv619 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_term)), _, (xs : 'tv_list_term_)) = _menhir_stack in
        let _v : 'tv_list_term_ = 
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 369 "parserLan.ml"
         in
        _menhir_goto_list_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv620)) : 'freshtv622)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv627 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 377 "parserLan.ml"
        )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv623 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 387 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv624)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv625 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 398 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv626)) : 'freshtv628)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv635 * _menhir_state)) * (
# 5 "parserLan.mly"
       (string)
# 407 "parserLan.ml"
        )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv631 * _menhir_state)) * (
# 5 "parserLan.mly"
       (string)
# 417 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv629 * _menhir_state)) * (
# 5 "parserLan.mly"
       (string)
# 424 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (predname : (
# 5 "parserLan.mly"
       (string)
# 429 "parserLan.ml"
            ))), _, (ts : 'tv_list_term_)) = _menhir_stack in
            let _5 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_formula = 
# 121 "parserLan.mly"
   ( Formula("user-defined", LangVar predname :: ts) )
# 437 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv630)) : 'freshtv632)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv633 * _menhir_state)) * (
# 5 "parserLan.mly"
       (string)
# 447 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv634)) : 'freshtv636)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv645 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 456 "parserLan.ml"
        )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv641 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 466 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT | LABELEDSTEP | LEFTARROW | LEFTSQUARE | NOSTEP | SEMICOLON | STEP | SUBTYPING ->
                _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack)
            | AND | DOT | PROVIDED ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv637 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 478 "parserLan.ml"
                )) * _menhir_state * 'tv_list_term_)) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), (opname : (
# 5 "parserLan.mly"
       (string)
# 483 "parserLan.ml"
                ))), _, (ts : 'tv_list_term_)) = _menhir_stack in
                let _4 = () in
                let _1 = () in
                let _v : 'tv_formula = 
# 113 "parserLan.mly"
    ( Formula(opname, ts) )
# 490 "parserLan.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv638)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv639 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 500 "parserLan.ml"
                )) * _menhir_state * 'tv_list_term_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv640)) : 'freshtv642)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv643 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 511 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv644)) : 'freshtv646)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list___anonymous_0_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list___anonymous_0_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv611 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_0_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv609 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_0_) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (t0 : 'tv_term)), _, (xs : 'tv_list___anonymous_0_)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_list___anonymous_0_ = let x =
          let t = t0 in
          let _1 = _10 in
          
# 98 "parserLan.mly"
                                                          (t)
# 535 "parserLan.ml"
          
        in
        
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 541 "parserLan.ml"
         in
        _menhir_goto_list___anonymous_0_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv610)) : 'freshtv612)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv617 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_0_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TURNSTYLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv613 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_0_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState146) : 'freshtv614)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv615 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_0_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv616)) : 'freshtv618)
    | _ ->
        _menhir_fail ()

and _menhir_run142 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | LEFTPAR ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | VALUECTX ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | VARBIGX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | VARTERM _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | VARX ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142

and _menhir_reduce29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list___anonymous_2_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 610 "parserLan.ml"
     in
    _menhir_goto_list___anonymous_2_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run131 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState131
    | LEFTPAR ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState131
    | VALUECTX ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState131
    | VARBIGX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState131
    | VARTERM _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
    | VARX ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState131
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131

and _menhir_goto_option___anonymous_3_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option___anonymous_3_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv607 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFTARROW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv603 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | LEFTPAR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv604)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv605 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv606)) : 'freshtv608)

and _menhir_goto_list___anonymous_1_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list___anonymous_1_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv595 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_1_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv593 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_1_) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (t0 : 'tv_term)), _, (xs : 'tv_list___anonymous_1_)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_list___anonymous_1_ = let x =
          let t = t0 in
          let _1 = _10 in
          
# 104 "parserLan.mly"
                                                     (t)
# 692 "parserLan.ml"
          
        in
        
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 698 "parserLan.ml"
         in
        _menhir_goto_list___anonymous_1_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv594)) : 'freshtv596)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv601 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_1_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv597 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_1_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv598)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv599 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_1_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv600)) : 'freshtv602)
    | _ ->
        _menhir_fail ()

and _menhir_run94 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | LEFTPAR ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | VALUECTX ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | VARBIGX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | VARTERM _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | VARX ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94

and _menhir_goto_separated_nonempty_list_COMMA___anonymous_5_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA___anonymous_5_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv587 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA___anonymous_5_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv585 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA___anonymous_5_) : 'tv_separated_nonempty_list_COMMA___anonymous_5_) = _v in
        ((let ((((_menhir_stack, _menhir_s, (t20 : 'tv_term)), _), _, (t30 : 'tv_term)), _) = _menhir_stack in
        let _2 = () in
        let _20 = () in
        let _v : 'tv_separated_nonempty_list_COMMA___anonymous_5_ = let x =
          let t3 = t30 in
          let _2 = _20 in
          let t2 = t20 in
          
# 124 "parserLan.mly"
                                                                                                                          ( [t2 ; t3])
# 784 "parserLan.ml"
          
        in
        
# 217 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 790 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA___anonymous_5_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv586)) : 'freshtv588)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv591) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA___anonymous_5_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv589) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA___anonymous_5_) : 'tv_separated_nonempty_list_COMMA___anonymous_5_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__ = 
# 130 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x )
# 805 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA___anonymous_5__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv590)) : 'freshtv592)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA___anonymous_5__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((((('freshtv583 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHTSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv579 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv577 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__) = Obj.magic _menhir_stack in
        ((let ((((((_menhir_stack, _menhir_s), _, (t1 : 'tv_term)), _), _, (tOfVarAffected : 'tv_term)), _), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__)) = _menhir_stack in
        let _8 = () in
        let _6 = () in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_formula = let lists =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 836 "parserLan.ml"
          
        in
        
# 125 "parserLan.mly"
   ( Formula("retrieve", t1 :: tOfVarAffected :: List.concat lists) )
# 842 "parserLan.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv578)) : 'freshtv580)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv581 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv582)) : 'freshtv584)

and _menhir_goto_separated_nonempty_list_COMMA___anonymous_4_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA___anonymous_4_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv571 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA___anonymous_4_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv569 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA___anonymous_4_) : 'tv_separated_nonempty_list_COMMA___anonymous_4_) = _v in
        ((let ((((_menhir_stack, _menhir_s, (t20 : 'tv_term)), _), _, (t30 : 'tv_term)), _) = _menhir_stack in
        let _2 = () in
        let _20 = () in
        let _v : 'tv_separated_nonempty_list_COMMA___anonymous_4_ = let x =
          let t3 = t30 in
          let _2 = _20 in
          let t2 = t20 in
          
# 122 "parserLan.mly"
                                                                                                    ( [t2 ; t3])
# 875 "parserLan.ml"
          
        in
        
# 217 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 881 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA___anonymous_4_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv570)) : 'freshtv572)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv575) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA___anonymous_4_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv573) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA___anonymous_4_) : 'tv_separated_nonempty_list_COMMA___anonymous_4_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA___anonymous_4__ = 
# 130 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x )
# 896 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA___anonymous_4__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv574)) : 'freshtv576)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA___anonymous_4__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA___anonymous_4__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv567 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_4__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHTSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv563 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_4__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv561 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_4__) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (t1 : 'tv_term)), _), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA___anonymous_4__)) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_formula = let lists =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 926 "parserLan.ml"
          
        in
        
# 123 "parserLan.mly"
 ( Formula("set", List.concat lists @ [t1]) )
# 932 "parserLan.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv562)) : 'freshtv564)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv565 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA___anonymous_4__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv566)) : 'freshtv568)

and _menhir_goto_formula : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState45 | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv551 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv543 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv541 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (f : 'tv_formula)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_rule = 
# 91 "parserLan.mly"
    ( Rule([],f) )
# 964 "parserLan.ml"
             in
            _menhir_goto_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv542)) : 'freshtv544)
        | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv547 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | GAMMA ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | LEFTPAR ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | RETRIEVE ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | SET ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | USER ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | VALUEPRED ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | DOT ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv545) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState151 in
                ((let _v : 'tv_loption_separated_nonempty_list_AND_formula__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 1002 "parserLan.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_AND_formula__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv546)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv548)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv549 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv550)) : 'freshtv552)
    | MenhirState156 | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv559 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv553 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | GAMMA ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | LEFTPAR ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | RETRIEVE ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | SET ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | USER ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | VALUEPRED ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156) : 'freshtv554)
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv555 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_formula)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_formula_ = 
# 215 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [ x ] )
# 1061 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_formula_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv556)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv557 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv558)) : 'freshtv560)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_MID_term_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_MID_term_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv535 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv533 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_MID_term_) : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_term)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_MID_term_ = 
# 217 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 1091 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_MID_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv534)) : 'freshtv536)
    | MenhirState4 | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv539) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv537) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_MID_term_) : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_MID_term__ = 
# 130 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x )
# 1106 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv538)) : 'freshtv540)
    | _ ->
        _menhir_fail ()

and _menhir_run23 : _menhir_env -> (('ttv_tail * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | LEFTPAR ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | VALUECTX ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | VARBIGX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | VARTERM _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | VARX ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run21 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_term -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LEFTPAR ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | VALUECTX ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | VARBIGX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | VARTERM _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | VARX ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_goto_list_rule_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_rule_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv517 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_rule_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv515 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_rule_) : 'tv_list_rule_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_rule)) = _menhir_stack in
        let _v : 'tv_list_rule_ = 
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 1174 "parserLan.ml"
         in
        _menhir_goto_list_rule_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv516)) : 'freshtv518)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv531 * _menhir_state * 'tv_list_grammarLine_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_rule_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv529 * _menhir_state * 'tv_list_grammarLine_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((rules : 'tv_list_rule_) : 'tv_list_rule_) = _v in
        ((let (_menhir_stack, _menhir_s, (grammar : 'tv_list_grammarLine_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_language = 
# 67 "parserLan.mly"
    ( Language(grammar, rules) )
# 1191 "parserLan.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv527) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_language) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv525 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv521 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv519 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (lan : 'tv_language)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 55 "parserLan.mly"
      (Language.language)
# 1213 "parserLan.ml"
            ) = 
# 63 "parserLan.mly"
    ( lan )
# 1217 "parserLan.ml"
             in
            _menhir_goto_fileLan _menhir_env _menhir_stack _menhir_s _v) : 'freshtv520)) : 'freshtv522)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv523 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv524)) : 'freshtv526)) : 'freshtv528)) : 'freshtv530)) : 'freshtv532)
    | _ ->
        _menhir_fail ()

and _menhir_goto_gamma : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_gamma -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv513 * _menhir_state * 'tv_gamma) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState137
    | TURNSTYLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv511 * _menhir_state * 'tv_gamma) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState137 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState138
        | LEFTPAR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState138
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState138
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState138
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState138
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138) : 'freshtv512)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv514)

and _menhir_goto_grammarLine : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_grammarLine -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv509 * _menhir_state * 'tv_grammarLine) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARTERM _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
    | DOT ->
        _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162) : 'freshtv510)

and _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHTPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv505 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LEFTPAR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv506)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv507 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv508)

and _menhir_reduce35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_term_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 1326 "parserLan.ml"
     in
    _menhir_goto_list_term_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run31 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHTPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv501 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LEFTPAR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv502)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv503 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv504)

and _menhir_goto_term : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_term -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv313 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | AND | AT | COLON | COMMA | DOT | EXPCTX | GRAMMARASSIGN | LABELEDSTEP | LEFTARROW | LEFTPAR | MAPSTO | MID | NOSTEP | PLUS | PROVIDED | RIGHTPAR | RIGHTSQUARE | SEMICOLON | STEP | SUBSTBAR | SUBTYPING | TURNSTYLE | VALUECTX | VARBIGX | VARTERM _ | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv311 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_term = 
# 79 "parserLan.mly"
    ( Abs(t) )
# 1387 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv314)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv315 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | SUBSTBAR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv316)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv321 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | RIGHTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv319 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState24 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv317 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _), _, (t3 : 'tv_term)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_term = 
# 87 "parserLan.mly"
      ( Substitution(t1,t2,t3) )
# 1431 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)) : 'freshtv320)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv322)
    | MenhirState80 | MenhirState50 | MenhirState27 | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv323 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | LEFTPAR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | RIGHTPAR ->
            _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv324)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv327 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | AND | AT | COLON | COMMA | DOT | EXPCTX | GRAMMARASSIGN | LABELEDSTEP | LEFTARROW | LEFTPAR | MAPSTO | MID | NOSTEP | PLUS | PROVIDED | RIGHTPAR | RIGHTSQUARE | SEMICOLON | STEP | SUBSTBAR | SUBTYPING | TURNSTYLE | VALUECTX | VARBIGX | VARTERM _ | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv325 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_term = 
# 81 "parserLan.mly"
   ( AbsType(t) )
# 1482 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv328)
    | MenhirState4 | MenhirState37 | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv333 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MID ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState36 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37) : 'freshtv330)
        | DOT | VARTERM _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv331 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_term)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_MID_term_ = 
# 215 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [ x ] )
# 1528 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_MID_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv332)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv334)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv335 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_formula = 
# 107 "parserLan.mly"
 ( Formula("value", [t]) )
# 1551 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv338)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv347 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GRAMMARASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv345 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState54 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LEFTSQUARE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv341 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EXPCTX ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | LEFTPAR ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | VALUECTX ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | VARBIGX ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | VARTERM _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
                | VARX ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56
                | RIGHTSQUARE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv339) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState56 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA___anonymous_4__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 1597 "parserLan.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA___anonymous_4__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv342)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv343 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv348)
    | MenhirState60 | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv351 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | MAPSTO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv349 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState57 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv350)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv352)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv357 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv353 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState59 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv354)
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | RIGHTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv355 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t20 : 'tv_term)), _), _, (t30 : 'tv_term)) = _menhir_stack in
            let _20 = () in
            let _v : 'tv_separated_nonempty_list_COMMA___anonymous_4_ = let x =
              let t3 = t30 in
              let _2 = _20 in
              let t2 = t20 in
              
# 122 "parserLan.mly"
                                                                                                    ( [t2 ; t3])
# 1697 "parserLan.ml"
              
            in
            
# 215 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [ x ] )
# 1703 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA___anonymous_4_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv358)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv361 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv359 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState66 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState67
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv360)
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv362)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv371 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | MAPSTO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv369 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState68 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LEFTSQUARE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv365 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EXPCTX ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | LEFTPAR ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | VALUECTX ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | VARBIGX ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | VARTERM _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
                | VARX ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | RIGHTSQUARE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv363) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState70 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA___anonymous_5__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 1787 "parserLan.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA___anonymous_5__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv366)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv367 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)) : 'freshtv370)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv372)
    | MenhirState74 | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv375 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv373 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState71 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv374)
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv376)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv381 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv377 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState73 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv378)
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | RIGHTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv379 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t20 : 'tv_term)), _), _, (t30 : 'tv_term)) = _menhir_stack in
            let _20 = () in
            let _v : 'tv_separated_nonempty_list_COMMA___anonymous_5_ = let x =
              let t3 = t30 in
              let _2 = _20 in
              let t2 = t20 in
              
# 124 "parserLan.mly"
                                                                                                                          ( [t2 ; t3])
# 1885 "parserLan.ml"
              
            in
            
# 215 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [ x ] )
# 1891 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA___anonymous_5_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv382)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv385 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | SEMICOLON | TURNSTYLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv383 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_gamma = 
# 131 "parserLan.mly"
    ( Constr("gammaAddx", [t]) )
# 1917 "parserLan.ml"
             in
            _menhir_goto_gamma _menhir_env _menhir_stack _menhir_s _v) : 'freshtv384)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv386)
    | MenhirState156 | MenhirState151 | MenhirState135 | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState89 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv388)
        | LABELEDSTEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState89 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv390)
        | LEFTARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv391 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState89 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv392)
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | NOSTEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv393 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState89 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv394)
        | SEMICOLON ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv395 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState89 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState92
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv396)
        | SUBTYPING ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv397 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState89 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv398)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv400)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv403 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv401 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 101 "parserLan.mly"
    ( Formula("subtype", [t1 ; t2]) )
# 2098 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv402)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv404)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv407 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv405 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 103 "parserLan.mly"
    ( Formula("step", [t1 ; t2]) )
# 2121 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv408)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv411 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | SEMICOLON ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv409) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState95 in
            ((let _v : 'tv_list___anonymous_1_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 2145 "parserLan.ml"
             in
            _menhir_goto_list___anonymous_1_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv412)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv417 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv415 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState98 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv413 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
# 111 "parserLan.mly"
    ( Formula("nstep", [t1 ; t2]) )
# 2174 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)) : 'freshtv416)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv418)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv421 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv419 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState101 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv420)
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv422)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv425 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv423 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState103 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv424)
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv426)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv431 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv429 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState105 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv427 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _), _, (t3 : 'tv_term)), _), _, (t4 : 'tv_term)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
# 115 "parserLan.mly"
    ( Formula("lookup", [t1 ; t2 ; t3 ; t4]) )
# 2277 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)) : 'freshtv430)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv432)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv435 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv433 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState108 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv434)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv436)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv439 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv437 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _), _, (t3 : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
# 109 "parserLan.mly"
    ( Formula("step", [t1 ; t2 ; t3]) )
# 2337 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv440)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv449 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv445 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState112 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | INT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv443 * _menhir_state) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState113 in
                let (_v : (
# 7 "parserLan.mly"
       (int)
# 2367 "parserLan.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv441 * _menhir_state) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let ((num0 : (
# 7 "parserLan.mly"
       (int)
# 2376 "parserLan.ml"
                )) : (
# 7 "parserLan.mly"
       (int)
# 2380 "parserLan.ml"
                )) = _v in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                let _10 = () in
                let _v : 'tv_option___anonymous_3_ = let x =
                  let num = num0 in
                  let _1 = _10 in
                  
# 118 "parserLan.mly"
                                                        ( num )
# 2390 "parserLan.ml"
                  
                in
                
# 102 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( Some x )
# 2396 "parserLan.ml"
                 in
                _menhir_goto_option___anonymous_3_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv442)) : 'freshtv444)
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv446)
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | LEFTARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv447) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState112 in
            ((let _v : 'tv_option___anonymous_3_ = 
# 100 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( None )
# 2422 "parserLan.ml"
             in
            _menhir_goto_option___anonymous_3_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv450)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv453 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv451 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState115 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv452)
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv454)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv457 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | PLUS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv455 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState117 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv456)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv458)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv461 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv459 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((((((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _), _, (t3 : 'tv_term)), _), _, (t4 : 'tv_term)), _), _, (t5 : 'tv_term)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
# 117 "parserLan.mly"
    ( Formula("add", [t1 ; t2 ; t3 ; t4 ; t5]) )
# 2520 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv460)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv462)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv465 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv463 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState122 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv464)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv466)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv469 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | MAPSTO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv467 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState124 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv468)
        | SUBSTBAR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124) : 'freshtv470)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv475 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | RIGHTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv473 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState126 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv471 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((((((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _, (num : 'tv_option___anonymous_3_)), _, (t3 : 'tv_term)), _), _, (t4 : 'tv_term)), _), _, (t5 : 'tv_term)) = _menhir_stack in
            let _11 = () in
            let _9 = () in
            let _7 = () in
            let _5 = () in
            let _2 = () in
            let _v : 'tv_formula = 
# 119 "parserLan.mly"
    ( if Option.is_some num then Formula("updateStrong", [t1 ; t2 ; t3 ; t4 ; t5 ; LangVar (string_of_int (Option.get num)) ]) else Formula("update", [t1 ; t2 ; t3 ; t4 ; t5 ]) )
# 2624 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv472)) : 'freshtv474)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126) : 'freshtv476)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv477 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_1_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | SEMICOLON ->
            _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | AND | DOT | PROVIDED ->
            _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState130
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv478)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv479 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | SEMICOLON ->
            _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | AND | DOT | PROVIDED ->
            _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132) : 'freshtv480)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv483 * _menhir_state * 'tv_gamma) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv481 * _menhir_state * 'tv_gamma) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState139 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState140
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState140
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState140
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState140
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState140
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140) : 'freshtv482)
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState139
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139) : 'freshtv484)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv487 * _menhir_state * 'tv_gamma) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv485 * _menhir_state * 'tv_gamma) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, (gammaTerm : 'tv_gamma)), _), _, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
# 97 "parserLan.mly"
 ( Formula("typeOf", [gammaTerm ; t1 ; t2]) )
# 2716 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv488)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv491 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | SEMICOLON ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | TURNSTYLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv489) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState143 in
            ((let _v : 'tv_list___anonymous_0_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 2740 "parserLan.ml"
             in
            _menhir_goto_list___anonymous_0_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv490)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv492)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv495 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_0_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv493 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_0_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState147 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState148
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState148
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState148
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState148
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState148
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148) : 'freshtv494)
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState147
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147) : 'freshtv496)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv499 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_0_)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState149
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv497 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_0_)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, (gammaTerm : 'tv_gamma)), _, (otherEnvs : 'tv_list___anonymous_0_)), _, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _v : 'tv_formula = 
# 99 "parserLan.mly"
  ( Formula("typeOf", (gammaTerm :: (otherEnvs @ [t1 ; t2]))) )
# 2800 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv498)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149) : 'freshtv500)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_rule_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 2820 "parserLan.ml"
     in
    _menhir_goto_list_rule_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LEFTPAR ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | VALUECTX ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | VARBIGX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | VARTERM _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | VARX ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFTPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv307 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VARLEX _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv303 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 5 "parserLan.mly"
       (string)
# 2865 "parserLan.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | LEFTPAR ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | RIGHTPAR ->
                _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv304)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv305 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LEFTPAR ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | VALUECTX ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | VARBIGX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | VARTERM _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | VARX ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | LEFTPAR ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | VALUECTX ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | VARBIGX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | VARTERM _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | VARX ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_run79 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARBIGX ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
    | VARLEX _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "parserLan.mly"
       (string)
# 2964 "parserLan.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | LEFTPAR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | RIGHTPAR ->
            _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv300)
    | VARX ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv301 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)

and _menhir_run83 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv293 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VARBIGX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv283 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv281 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_gamma = 
# 133 "parserLan.mly"
 ( Constr("gammaAddX", []) )
# 3023 "parserLan.ml"
             in
            _menhir_goto_gamma _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)) : 'freshtv284)
        | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv289 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv285 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EXPCTX ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | LEFTPAR ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | VALUECTX ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | VARBIGX ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | VARTERM _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                | VARX ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv286)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv287 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)) : 'freshtv290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv291 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)
    | SEMICOLON | TURNSTYLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv295 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_gamma = 
# 129 "parserLan.mly"
    ( LangVar "Gamma" )
# 3076 "parserLan.ml"
         in
        _menhir_goto_gamma _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)

and _menhir_goto_loption_separated_nonempty_list_MID_term__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_MID_term__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((xs0 : 'tv_loption_separated_nonempty_list_MID_term__) : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let _v : 'tv_option_separated_list_MID_term__ = let x =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 3104 "parserLan.ml"
          
        in
        
# 102 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( Some x )
# 3110 "parserLan.ml"
         in
        _menhir_goto_option_separated_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)) : 'freshtv276)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3118 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv277 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3126 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs0 : 'tv_loption_separated_nonempty_list_MID_term__) : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let ((_menhir_stack, _menhir_s, (category : (
# 6 "parserLan.mly"
       (string)
# 3133 "parserLan.ml"
        ))), (metavar : 'tv_option_VARTERM_)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_grammarLine = let ts =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( xs )
# 3141 "parserLan.ml"
          
        in
        
# 138 "parserLan.mly"
 ( GrammarLine(category,metavar, Some ts) )
# 3147 "parserLan.ml"
         in
        _menhir_goto_grammarLine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)) : 'freshtv280)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option___anonymous_6_ : _menhir_env -> 'ttv_tail -> 'tv_option___anonymous_6_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((((('freshtv271 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3159 "parserLan.ml"
    )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 3163 "parserLan.ml"
    ))) * (
# 6 "parserLan.mly"
       (string)
# 3167 "parserLan.ml"
    ))) = Obj.magic _menhir_stack in
    let (_v : 'tv_option___anonymous_6_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((((('freshtv269 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3174 "parserLan.ml"
    )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 3178 "parserLan.ml"
    ))) * (
# 6 "parserLan.mly"
       (string)
# 3182 "parserLan.ml"
    ))) = Obj.magic _menhir_stack in
    let ((strong : 'tv_option___anonymous_6_) : 'tv_option___anonymous_6_) = _v in
    ((let (((((_menhir_stack, _menhir_s, (category : (
# 6 "parserLan.mly"
       (string)
# 3188 "parserLan.ml"
    ))), (metavar : 'tv_option_VARTERM_)), _), (key : (
# 6 "parserLan.mly"
       (string)
# 3192 "parserLan.ml"
    ))), (value : (
# 6 "parserLan.mly"
       (string)
# 3196 "parserLan.ml"
    ))) = _menhir_stack in
    let _8 = () in
    let _6 = () in
    let _4 = () in
    let _3 = () in
    let _v : 'tv_grammarLine = 
# 140 "parserLan.mly"
 ( GrammarLine(category, metavar, Some [lang_make_map key value strong]) )
# 3205 "parserLan.ml"
     in
    _menhir_goto_grammarLine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)) : 'freshtv272)

and _menhir_goto_option_separated_list_MID_term__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_separated_list_MID_term__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv267 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3215 "parserLan.ml"
    )) * 'tv_option_VARTERM_)) * _menhir_state)) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_option_separated_list_MID_term__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv265 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3223 "parserLan.ml"
    )) * 'tv_option_VARTERM_)) * _menhir_state)) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((ts : 'tv_option_separated_list_MID_term__) : 'tv_option_separated_list_MID_term__) = _v in
    ((let (((_menhir_stack, _menhir_s, (category : (
# 6 "parserLan.mly"
       (string)
# 3230 "parserLan.ml"
    ))), (metavar : 'tv_option_VARTERM_)), _) = _menhir_stack in
    let _5 = () in
    let _4 = () in
    let _3 = () in
    let _v : 'tv_grammarLine = 
# 142 "parserLan.mly"
 ( if category = "C" then GrammarLine("Context",Some "C",ts) else GrammarLine(category,metavar,ts) )
# 3238 "parserLan.ml"
     in
    _menhir_goto_grammarLine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)) : 'freshtv268)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv263) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 73 "parserLan.mly"
    ( BoundVar )
# 3252 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parserLan.mly"
       (string)
# 3259 "parserLan.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv261) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((var : (
# 6 "parserLan.mly"
       (string)
# 3269 "parserLan.ml"
    )) : (
# 6 "parserLan.mly"
       (string)
# 3273 "parserLan.ml"
    )) = _v in
    ((let _v : 'tv_term = 
# 77 "parserLan.mly"
    ( LangVar(var) )
# 3278 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 75 "parserLan.mly"
    ( BoundTypeVar )
# 3292 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 83 "parserLan.mly"
      ( LangVar "v" )
# 3306 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARBIGX ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
    | VARLEX _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "parserLan.mly"
       (string)
# 3324 "parserLan.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LEFTPAR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | RIGHTPAR ->
            _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv254)
    | VARX ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv251) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 85 "parserLan.mly"
      ( LangVar "e" )
# 3368 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)

and _menhir_goto_list_grammarLine_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_grammarLine_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245 * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv241 * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | GAMMA ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | LEFTPAR ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | RETRIEVE ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | SET ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | USER ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | VALUEPRED ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | EOF ->
                _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv243 * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv249 * _menhir_state * 'tv_grammarLine) * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv247 * _menhir_state * 'tv_grammarLine) * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_grammarLine)), _, (xs : 'tv_list_grammarLine_)) = _menhir_stack in
        let _v : 'tv_list_grammarLine_ = 
# 187 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( x :: xs )
# 3432 "parserLan.ml"
         in
        _menhir_goto_list_grammarLine_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)) : 'freshtv250)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_VARTERM_ : _menhir_env -> 'ttv_tail -> 'tv_option_VARTERM_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv239 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3445 "parserLan.ml"
    )) * 'tv_option_VARTERM_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | GRAMMARASSIGN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3455 "parserLan.ml"
        )) * 'tv_option_VARTERM_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EMPTYCTX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv205 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3465 "parserLan.ml"
            )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState4 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | MID ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv201 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3477 "parserLan.ml"
                )) * 'tv_option_VARTERM_)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EXPCTX ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | LEFTPAR ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | VALUECTX ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | VARBIGX ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | VARTERM _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
                | VARX ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | DOT ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv199) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState35 in
                    ((let _v : 'tv_option_separated_list_MID_term__ = 
# 100 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( None )
# 3501 "parserLan.ml"
                     in
                    _menhir_goto_option_separated_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv202)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv203 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3515 "parserLan.ml"
                )) * 'tv_option_VARTERM_)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)) : 'freshtv206)
        | EXPCTX ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LEFTPAR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LEFTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv231 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3528 "parserLan.ml"
            )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState4 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VARTERM _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv227 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3540 "parserLan.ml"
                )) * 'tv_option_VARTERM_)) * _menhir_state) = Obj.magic _menhir_stack in
                let (_v : (
# 6 "parserLan.mly"
       (string)
# 3545 "parserLan.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | MAPSTO ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv223 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3556 "parserLan.ml"
                    )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 3560 "parserLan.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | VARTERM _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv219 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3570 "parserLan.ml"
                        )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 3574 "parserLan.ml"
                        ))) = Obj.magic _menhir_stack in
                        let (_v : (
# 6 "parserLan.mly"
       (string)
# 3579 "parserLan.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | RIGHTSQUARE ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv215 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3590 "parserLan.ml"
                            )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 3594 "parserLan.ml"
                            ))) * (
# 6 "parserLan.mly"
       (string)
# 3598 "parserLan.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | STRONG ->
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : 'freshtv209) = Obj.magic _menhir_stack in
                                ((let _menhir_env = _menhir_discard _menhir_env in
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : 'freshtv207) = Obj.magic _menhir_stack in
                                ((let _10 = () in
                                let _v : 'tv_option___anonymous_6_ = let x =
                                  let _1 = _10 in
                                  
# 139 "parserLan.mly"
                                                                                                                                                   ( true )
# 3615 "parserLan.ml"
                                  
                                in
                                
# 102 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( Some x )
# 3621 "parserLan.ml"
                                 in
                                _menhir_goto_option___anonymous_6_ _menhir_env _menhir_stack _v) : 'freshtv208)) : 'freshtv210)
                            | DOT | VARTERM _ ->
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : 'freshtv211) = Obj.magic _menhir_stack in
                                ((let _v : 'tv_option___anonymous_6_ = 
# 100 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( None )
# 3630 "parserLan.ml"
                                 in
                                _menhir_goto_option___anonymous_6_ _menhir_env _menhir_stack _v) : 'freshtv212)
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : ((((((('freshtv213 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3640 "parserLan.ml"
                                )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 3644 "parserLan.ml"
                                ))) * (
# 6 "parserLan.mly"
       (string)
# 3648 "parserLan.ml"
                                ))) = Obj.magic _menhir_stack in
                                ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)) : 'freshtv216)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv217 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3659 "parserLan.ml"
                            )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 3663 "parserLan.ml"
                            ))) * (
# 6 "parserLan.mly"
       (string)
# 3667 "parserLan.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)) : 'freshtv220)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv221 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3678 "parserLan.ml"
                        )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 3682 "parserLan.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)) : 'freshtv224)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv225 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3693 "parserLan.ml"
                    )) * 'tv_option_VARTERM_)) * _menhir_state) * (
# 6 "parserLan.mly"
       (string)
# 3697 "parserLan.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)) : 'freshtv228)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv229 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3708 "parserLan.ml"
                )) * 'tv_option_VARTERM_)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv233) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState4 in
            ((let _v : 'tv_loption_separated_nonempty_list_MID_term__ = 
# 128 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 3727 "parserLan.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv236)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv237 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 3741 "parserLan.ml"
        )) * 'tv_option_VARTERM_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)) : 'freshtv240)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * 'tv_grammarLine) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv25 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_0_)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv27 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_0_)) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv29 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_0_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv31 * _menhir_state * 'tv_gamma) * _menhir_state * 'tv_list___anonymous_0_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv37 * _menhir_state * 'tv_gamma) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv39 * _menhir_state * 'tv_gamma) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * _menhir_state * 'tv_gamma) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_gamma) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state * 'tv_gamma) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv53 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_1_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list___anonymous_1_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv57 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv59 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv61 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv63 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_)) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv65 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv67 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state * 'tv_option___anonymous_3_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv69 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv71 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv73 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv75 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv77 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv79 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv85 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv87 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv93 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv95 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv97 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv99 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv101 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv113 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv117 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv123 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv125 * _menhir_state)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 4024 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv129 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv137 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv139 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv141 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv147 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv149 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv151 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv155 * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv161 * _menhir_state)) * (
# 5 "parserLan.mly"
       (string)
# 4113 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state * 'tv_list_grammarLine_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv173 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 4147 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv175 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv177 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 4171 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv183 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv185 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv187 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv191 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv193 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 4210 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv198)

and _menhir_reduce31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_grammarLine_ = 
# 185 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( [] )
# 4224 "parserLan.ml"
     in
    _menhir_goto_list_grammarLine_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parserLan.mly"
       (string)
# 4231 "parserLan.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARTERM _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "parserLan.mly"
       (string)
# 4244 "parserLan.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
        let ((x : (
# 6 "parserLan.mly"
       (string)
# 4252 "parserLan.ml"
        )) : (
# 6 "parserLan.mly"
       (string)
# 4256 "parserLan.ml"
        )) = _v in
        ((let _v : 'tv_option_VARTERM_ = 
# 102 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( Some x )
# 4261 "parserLan.ml"
         in
        _menhir_goto_option_VARTERM_ _menhir_env _menhir_stack _v) : 'freshtv12)) : 'freshtv14)
    | GRAMMARASSIGN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_VARTERM_ = 
# 100 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
    ( None )
# 4270 "parserLan.ml"
         in
        _menhir_goto_option_VARTERM_ _menhir_env _menhir_stack _v) : 'freshtv16)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 4280 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)

and _menhir_goto_fileLan : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 55 "parserLan.mly"
      (Language.language)
# 4288 "parserLan.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 55 "parserLan.mly"
      (Language.language)
# 4297 "parserLan.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 55 "parserLan.mly"
      (Language.language)
# 4305 "parserLan.ml"
    )) : (
# 55 "parserLan.mly"
      (Language.language)
# 4309 "parserLan.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv8)) : 'freshtv10)

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
# 55 "parserLan.mly"
      (Language.language)
# 4328 "parserLan.ml"
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
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((let _1 = () in
        let _v : (
# 55 "parserLan.mly"
      (Language.language)
# 4358 "parserLan.ml"
        ) = 
# 61 "parserLan.mly"
    ( Language([], []) )
# 4362 "parserLan.ml"
         in
        _menhir_goto_fileLan _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2)) : 'freshtv4)
    | VARTERM _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | DOT ->
        _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv6))

# 219 "/Users/matteocimini/.opam/LangNProve/lib/menhir/standard.mly"
  


# 4378 "parserLan.ml"
