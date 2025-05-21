# 1 "lexerLan.mll"
 
  open Lexing 
  open ParserLan
  exception Error of string

let next_line lexbuf =
  let pos = lexbuf.lex_curr_p in
  lexbuf.lex_curr_p <-
    { pos with pos_bol = lexbuf.lex_curr_pos;
               pos_lnum = pos.pos_lnum + 1
    }


# 16 "lexerLan.ml"

let rec __ocaml_lex_refill_buf lexbuf _buf _len _curr _last =
  if lexbuf.Lexing.lex_eof_reached then
    256, _buf, _len, _curr, _last
  else begin
    lexbuf.Lexing.lex_curr_pos <- _curr;
    lexbuf.Lexing.lex_last_pos <- _last;
    lexbuf.Lexing.refill_buff lexbuf;
    let _curr = lexbuf.Lexing.lex_curr_pos in
    let _last = lexbuf.Lexing.lex_last_pos in
    let _len = lexbuf.Lexing.lex_buffer_len in
    let _buf = lexbuf.Lexing.lex_buffer in
    if _curr < _len then
      Char.code (Bytes.unsafe_get _buf _curr), _buf, _len, (_curr + 1), _last
    else
      __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
  end

let rec __ocaml_lex_state3 lexbuf _last_action _buf _len _curr _last =
  (* *)
  let _last = _curr in
  let _last_action = 39 in
  let next_char, _buf, _len, _curr, _last =
    if _curr >= _len then
      __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
    else
      Char.code (Bytes.unsafe_get _buf _curr),
      _buf, _len, (_curr + 1), _last
  in
  begin match next_char with
    (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
    |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
      __ocaml_lex_state3 lexbuf 39 (* = last_action *) _buf _len _curr _last
    | _ ->
      let _curr = _last in
      lexbuf.Lexing.lex_curr_pos <- _curr;
      lexbuf.Lexing.lex_last_pos <- _last;
      39 (* = last_action *)
  end

and __ocaml_lex_state4 lexbuf _last_action _buf _len _curr _last =
  (* *)
  let _last = _curr in
  let _last_action = 38 in
  let next_char, _buf, _len, _curr, _last =
    if _curr >= _len then
      __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
    else
      Char.code (Bytes.unsafe_get _buf _curr),
      _buf, _len, (_curr + 1), _last
  in
  begin match next_char with
    (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
    |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
      __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
    | _ ->
      let _curr = _last in
      lexbuf.Lexing.lex_curr_pos <- _curr;
      lexbuf.Lexing.lex_last_pos <- _last;
      38 (* = last_action *)
  end

and __ocaml_lex_state29 lexbuf _last_action _buf _len _curr _last =
  (* *)
  let _last = _curr in
  let _last_action = 2 in
  let next_char, _buf, _len, _curr, _last =
    if _curr >= _len then
      __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
    else
      Char.code (Bytes.unsafe_get _buf _curr),
      _buf, _len, (_curr + 1), _last
  in
  begin match next_char with
    (* |'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9' *)
    |48|49|50|51|52|53|54|55|56|57 ->
      __ocaml_lex_state29 lexbuf 2 (* = last_action *) _buf _len _curr _last
    | _ ->
      let _curr = _last in
      lexbuf.Lexing.lex_curr_pos <- _curr;
      lexbuf.Lexing.lex_last_pos <- _last;
      2 (* = last_action *)
  end


let rec token lexbuf =
  let __ocaml_lex_result =
    let _curr = lexbuf.Lexing.lex_curr_pos in
    let _last = _curr in
    let _len = lexbuf.Lexing.lex_buffer_len in
    let _buf = lexbuf.Lexing.lex_buffer in
    let _last_action = -1 in
    lexbuf.Lexing.lex_start_pos <- _curr;
    let next_char, _buf, _len, _curr, _last =
      if _curr >= _len then
        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
      else
        Char.code (Bytes.unsafe_get _buf _curr),
        _buf, _len, (_curr + 1), _last
    in
    begin match next_char with
      (* |eof *)
      | 256 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        40
      (* |']' *)
      | 93 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        22
      (* |'\\' *)
      | 92 ->
        (* *)
        let _last = _curr in
        let _last_action = 41 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'/' *)
          | 47 ->
            (* *)
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            19
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            41 (* = last_action *)
        end
      (* |';' *)
      | 59 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        29
      (* |'[' *)
      | 91 ->
        (* *)
        let _last = _curr in
        let _last_action = 21 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |']' *)
          | 93 ->
            (* *)
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            10
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            21 (* = last_action *)
        end
      (* |'v' *)
      | 118 ->
        (* *)
        let _last = _curr in
        let _last_action = 6 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state4 lexbuf 6 (* = last_action *) _buf _len _curr _last
          (* |'a' *)
          | 97 ->
            (* *)
            let _last = _curr in
            let _last_action = 38 in
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'l' *)
              | 108 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 38 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'u' *)
                  | 117 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 38 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'e' *)
                      | 101 ->
                        (* *)
                        let _last = _curr in
                        let _last_action = 24 in
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state4 lexbuf 24 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            24 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        38 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|118|119|120|121|122 ->
                    __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    38 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                38 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            6 (* = last_action *)
        end
      (* |',' *)
      | 44 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        17
      (* |'s' *)
      | 115 ->
        (* *)
        let _last = _curr in
        let _last_action = 38 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'e' *)
          | 101 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 38 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
              (* |'t' *)
              | 116 ->
                (* *)
                let _last = _curr in
                let _last_action = 37 in
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state4 lexbuf 37 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    37 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                38 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
            __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
          (* |'t' *)
          | 116 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 38 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
              (* |'r' *)
              | 114 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 38 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                  (* |'o' *)
                  | 111 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 38 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'n' *)
                      | 110 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 38 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'g' *)
                          | 103 ->
                            (* *)
                            let _last = _curr in
                            let _last_action = 34 in
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state4 lexbuf 34 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                34 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            38 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        38 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    38 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                38 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            38 (* = last_action *)
        end
      (* |'\n'|'\r' *)
      |10|13 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        1
      (* |'(' *)
      | 40 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        14
      (* |'e' *)
      | 101 ->
        (* *)
        let _last = _curr in
        let _last_action = 7 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state4 lexbuf 7 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            7 (* = last_action *)
        end
      (* |')' *)
      | 41 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        15
      (* |'\t'|' ' *)
      |9|32 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        0
      (* |'r' *)
      | 114 ->
        (* *)
        let _last = _curr in
        let _last_action = 38 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
          (* |'e' *)
          | 101 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 38 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'t' *)
              | 116 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 38 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                  (* |'r' *)
                  | 114 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 38 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'i' *)
                      | 105 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 38 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                          (* |'e' *)
                          | 101 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 38 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|119|120|121|122 ->
                                __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                              (* |'v' *)
                              | 118 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 38 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'e' *)
                                  | 101 ->
                                    (* *)
                                    let _last = _curr in
                                    let _last_action = 36 in
                                    let next_char, _buf, _len, _curr, _last =
                                      if _curr >= _len then
                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                      else
                                        Char.code (Bytes.unsafe_get _buf _curr),
                                        _buf, _len, (_curr + 1), _last
                                    in
                                    begin match next_char with
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state4 lexbuf 36 (* = last_action *) _buf _len _curr _last
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        36 (* = last_action *)
                                    end
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    38 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                38 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            38 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        38 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    38 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                38 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            38 (* = last_action *)
        end
      (* |'X' *)
      | 88 ->
        (* *)
        let _last = _curr in
        let _last_action = 4 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state3 lexbuf 4 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            4 (* = last_action *)
        end
      (* |'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9' *)
      |48|49|50|51|52|53|54|55|56|57 ->
        __ocaml_lex_state29 lexbuf _last_action _buf _len _curr _last
      (* |'x' *)
      | 120 ->
        (* *)
        let _last = _curr in
        let _last_action = 3 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state4 lexbuf 3 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            3 (* = last_action *)
        end
      (* |'<' *)
      | 60 ->
        (* *)
        let _last = _curr in
        let _last_action = 41 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'=' *)
          | 61 ->
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'=' *)
              | 61 ->
                (* *)
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                16
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                41 (* = last_action *)
            end
          (* |'-' *)
          | 45 ->
            (* *)
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            31
          (* |':' *)
          | 58 ->
            (* *)
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            26
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            41 (* = last_action *)
        end
      (* |':' *)
      | 58 ->
        (* *)
        let _last = _curr in
        let _last_action = 13 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |':' *)
          | 58 ->
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'=' *)
              | 61 ->
                (* *)
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                8
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                13 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            13 (* = last_action *)
        end
      (* |'@' *)
      | 64 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        33
      (* |'/' *)
      | 47 ->
        (* *)
        let _last = _curr in
        let _last_action = 23 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'\\' *)
          | 92 ->
            (* *)
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            18
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            23 (* = last_action *)
        end
      (* |'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'t'|'w'|'y'|'z' *)
      |97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|116|119|121|122 ->
        __ocaml_lex_state4 lexbuf _last_action _buf _len _curr _last
      (* |'+' *)
      | 43 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        32
      (* |'|' *)
      | 124 ->
        (* *)
        let _last = _curr in
        let _last_action = 9 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'-' *)
          | 45 ->
            (* *)
            let _last = _curr in
            let _last_action = 12 in
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'>' *)
              | 62 ->
                (* *)
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                30
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                12 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            9 (* = last_action *)
        end
      (* |'%' *)
      | 37 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        25
      (* |'-' *)
      | 45 ->
        (* *)
        let _last = _curr in
        let _last_action = 41 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'-' *)
          | 45 ->
            (* *)
            let _last = _curr in
            let _last_action = 27 in
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'>' *)
              | 62 ->
                (* *)
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                5
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                27 (* = last_action *)
            end
          (* |'/' *)
          | 47 ->
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'-' *)
              | 45 ->
                (* *)
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                28
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                41 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            41 (* = last_action *)
        end
      (* |'.' *)
      | 46 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        20
      (* |'G' *)
      | 71 ->
        (* *)
        let _last = _curr in
        let _last_action = 39 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'a' *)
          | 97 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 39 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'m' *)
              | 109 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 39 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'m' *)
                  | 109 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 39 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'a' *)
                      | 97 ->
                        (* *)
                        let _last = _curr in
                        let _last_action = 11 in
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state3 lexbuf 11 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            11 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state3 lexbuf 39 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        39 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state3 lexbuf 39 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    39 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state3 lexbuf 39 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                39 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state3 lexbuf 39 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            39 (* = last_action *)
        end
      (* |'u' *)
      | 117 ->
        (* *)
        let _last = _curr in
        let _last_action = 38 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'s' *)
          | 115 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 38 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'e' *)
              | 101 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 38 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'r' *)
                  | 114 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 38 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'-' *)
                      | 45 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 38 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'d' *)
                          | 100 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 38 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                              (* |'e' *)
                              | 101 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 38 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                                  (* |'f' *)
                                  | 102 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 38 in*)
                                    let next_char, _buf, _len, _curr, _last =
                                      if _curr >= _len then
                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                      else
                                        Char.code (Bytes.unsafe_get _buf _curr),
                                        _buf, _len, (_curr + 1), _last
                                    in
                                    begin match next_char with
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                                      (* |'i' *)
                                      | 105 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 38 in*)
                                        let next_char, _buf, _len, _curr, _last =
                                          if _curr >= _len then
                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                          else
                                            Char.code (Bytes.unsafe_get _buf _curr),
                                            _buf, _len, (_curr + 1), _last
                                        in
                                        begin match next_char with
                                          (* |'n' *)
                                          | 110 ->
                                            (* *)
                                            let _last = _curr in
                                            (* let _last_action = 38 in*)
                                            let next_char, _buf, _len, _curr, _last =
                                              if _curr >= _len then
                                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                              else
                                                Char.code (Bytes.unsafe_get _buf _curr),
                                                _buf, _len, (_curr + 1), _last
                                            in
                                            begin match next_char with
                                              (* |'e' *)
                                              | 101 ->
                                                (* *)
                                                let _last = _curr in
                                                (* let _last_action = 38 in*)
                                                let next_char, _buf, _len, _curr, _last =
                                                  if _curr >= _len then
                                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                  else
                                                    Char.code (Bytes.unsafe_get _buf _curr),
                                                    _buf, _len, (_curr + 1), _last
                                                in
                                                begin match next_char with
                                                  (* |'d' *)
                                                  | 100 ->
                                                    (* *)
                                                    let _last = _curr in
                                                    let _last_action = 35 in
                                                    let next_char, _buf, _len, _curr, _last =
                                                      if _curr >= _len then
                                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                      else
                                                        Char.code (Bytes.unsafe_get _buf _curr),
                                                        _buf, _len, (_curr + 1), _last
                                                    in
                                                    begin match next_char with
                                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                        __ocaml_lex_state4 lexbuf 35 (* = last_action *) _buf _len _curr _last
                                                      | _ ->
                                                        let _curr = _last in
                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                        35 (* = last_action *)
                                                    end
                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                    __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    38 (* = last_action *)
                                                end
                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                38 (* = last_action *)
                                            end
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            38 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        38 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    38 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                38 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            38 (* = last_action *)
                        end
                      (* |'\''|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        38 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    38 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                38 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
            __ocaml_lex_state4 lexbuf 38 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            38 (* = last_action *)
        end
      (* |'A'|'B'|'C'|'D'|'E'|'F'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'Y'|'Z' *)
      |65|66|67|68|69|70|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|89|90 ->
        __ocaml_lex_state3 lexbuf _last_action _buf _len _curr _last
      | _ ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        41
    end
  in
  begin
    let _curr_p = lexbuf.Lexing.lex_curr_p in
    if _curr_p != Lexing.dummy_pos then begin
      lexbuf.Lexing.lex_start_p <- _curr_p;
      lexbuf.Lexing.lex_curr_p <-
        {_curr_p with Lexing.pos_cnum =
         lexbuf.Lexing.lex_abs_pos+lexbuf.Lexing.lex_curr_pos}
    end
  end;
  match __ocaml_lex_result with
  | 0 ->
# 19 "lexerLan.mll"
                ( token lexbuf )
# 1400 "lexerLan.ml"

  | 1 ->
# 20 "lexerLan.mll"
                 ( next_line lexbuf; token lexbuf )
# 1405 "lexerLan.ml"

  | 2 ->
# 21 "lexerLan.mll"
                         ( INT (int_of_string(Lexing.lexeme lexbuf)) )
# 1410 "lexerLan.ml"

  | 3 ->
# 22 "lexerLan.mll"
        ( VARX )
# 1415 "lexerLan.ml"

  | 4 ->
# 23 "lexerLan.mll"
        ( VARBIGX )
# 1420 "lexerLan.ml"

  | 5 ->
# 24 "lexerLan.mll"
          ( STEP )
# 1425 "lexerLan.ml"

  | 6 ->
# 25 "lexerLan.mll"
        ( VALUECTX )
# 1430 "lexerLan.ml"

  | 7 ->
# 26 "lexerLan.mll"
        ( EXPCTX )
# 1435 "lexerLan.ml"

  | 8 ->
# 27 "lexerLan.mll"
          ( GRAMMARASSIGN )
# 1440 "lexerLan.ml"

  | 9 ->
# 28 "lexerLan.mll"
        ( MID )
# 1445 "lexerLan.ml"

  | 10 ->
# 29 "lexerLan.mll"
         ( EMPTYCTX )
# 1450 "lexerLan.ml"

  | 11 ->
# 30 "lexerLan.mll"
            ( GAMMA )
# 1455 "lexerLan.ml"

  | 12 ->
# 31 "lexerLan.mll"
         ( TURNSTYLE )
# 1460 "lexerLan.ml"

  | 13 ->
# 32 "lexerLan.mll"
        ( COLON )
# 1465 "lexerLan.ml"

  | 14 ->
# 33 "lexerLan.mll"
        ( LEFTPAR )
# 1470 "lexerLan.ml"

  | 15 ->
# 34 "lexerLan.mll"
        ( RIGHTPAR )
# 1475 "lexerLan.ml"

  | 16 ->
# 35 "lexerLan.mll"
          ( PROVIDED )
# 1480 "lexerLan.ml"

  | 17 ->
# 36 "lexerLan.mll"
        ( COMMA )
# 1485 "lexerLan.ml"

  | 18 ->
# 37 "lexerLan.mll"
                     ( AND )
# 1490 "lexerLan.ml"

  | 19 ->
# 38 "lexerLan.mll"
                     ( OR )
# 1495 "lexerLan.ml"

  | 20 ->
# 39 "lexerLan.mll"
        ( DOT )
# 1500 "lexerLan.ml"

  | 21 ->
# 40 "lexerLan.mll"
        ( LEFTSQUARE )
# 1505 "lexerLan.ml"

  | 22 ->
# 41 "lexerLan.mll"
        ( RIGHTSQUARE )
# 1510 "lexerLan.ml"

  | 23 ->
# 42 "lexerLan.mll"
        ( SUBSTBAR )
# 1515 "lexerLan.ml"

  | 24 ->
# 43 "lexerLan.mll"
            ( VALUEPRED )
# 1520 "lexerLan.ml"

  | 25 ->
# 44 "lexerLan.mll"
        ( DIRECTIVE )
# 1525 "lexerLan.ml"

  | 26 ->
# 45 "lexerLan.mll"
         ( SUBTYPING )
# 1530 "lexerLan.ml"

  | 27 ->
# 47 "lexerLan.mll"
         ( LABELEDSTEP )
# 1535 "lexerLan.ml"

  | 28 ->
# 48 "lexerLan.mll"
          ( NOSTEP )
# 1540 "lexerLan.ml"

  | 29 ->
# 49 "lexerLan.mll"
        ( SEMICOLON )
# 1545 "lexerLan.ml"

  | 30 ->
# 51 "lexerLan.mll"
          ( MAPSTO )
# 1550 "lexerLan.ml"

  | 31 ->
# 52 "lexerLan.mll"
         ( LEFTARROW )
# 1555 "lexerLan.ml"

  | 32 ->
# 53 "lexerLan.mll"
        ( PLUS )
# 1560 "lexerLan.ml"

  | 33 ->
# 54 "lexerLan.mll"
        ( AT )
# 1565 "lexerLan.ml"

  | 34 ->
# 55 "lexerLan.mll"
             ( STRONG )
# 1570 "lexerLan.ml"

  | 35 ->
# 56 "lexerLan.mll"
                   ( USER )
# 1575 "lexerLan.ml"

  | 36 ->
# 57 "lexerLan.mll"
               ( RETRIEVE )
# 1580 "lexerLan.ml"

  | 37 ->
# 58 "lexerLan.mll"
          ( SET )
# 1585 "lexerLan.ml"

  | 38 ->
# 60 "lexerLan.mll"
                      ( VARLEX (Lexing.lexeme lexbuf) )
# 1590 "lexerLan.ml"

  | 39 ->
# 61 "lexerLan.mll"
                     ( VARTERM (Lexing.lexeme lexbuf) )
# 1595 "lexerLan.ml"

  | 40 ->
# 62 "lexerLan.mll"
                    ( EOF )
# 1600 "lexerLan.ml"

  | 41 ->
# 64 "lexerLan.mll"
     ( raise (Error (Printf.sprintf "At offset %d: unexpected character %s.\n" (Lexing.lexeme_start lexbuf) (Lexing.lexeme lexbuf))) )
# 1605 "lexerLan.ml"

  | _ -> raise (Failure "lexing: empty token")


;;

# 65 "lexerLan.mll"
 

# 1615 "lexerLan.ml"
