# 1 "lexer.mll"
 
  open Lexing
  open Parser
  exception Error of string


let next_line lexbuf =
  let pos = lexbuf.lex_curr_p in
  lexbuf.lex_curr_p <-
    { pos with pos_bol = lexbuf.lex_curr_pos;
               pos_lnum = pos.pos_lnum + 1
    }


# 17 "lexer.ml"

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
  let _last_action = 106 in
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
      __ocaml_lex_state3 lexbuf 106 (* = last_action *) _buf _len _curr _last
    | _ ->
      let _curr = _last in
      lexbuf.Lexing.lex_curr_pos <- _curr;
      lexbuf.Lexing.lex_last_pos <- _last;
      106 (* = last_action *)
  end

and __ocaml_lex_state4 lexbuf _last_action _buf _len _curr _last =
  (* *)
  let _last = _curr in
  let _last_action = 105 in
  let next_char, _buf, _len, _curr, _last =
    if _curr >= _len then
      __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
    else
      Char.code (Bytes.unsafe_get _buf _curr),
      _buf, _len, (_curr + 1), _last
  in
  begin match next_char with
    (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
    |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
      __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
    | _ ->
      let _curr = _last in
      lexbuf.Lexing.lex_curr_pos <- _curr;
      lexbuf.Lexing.lex_last_pos <- _last;
      105 (* = last_action *)
  end

and __ocaml_lex_state5 lexbuf _last_action _buf _len _curr _last =
  (* *)
  let _last = _curr in
  let _last_action = 104 in
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
      __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
    | _ ->
      let _curr = _last in
      lexbuf.Lexing.lex_curr_pos <- _curr;
      lexbuf.Lexing.lex_last_pos <- _last;
      104 (* = last_action *)
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
        107
      (* |'i' *)
      | 105 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
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
            let _last_action = 55 in
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'O' *)
              | 79 ->
                (* *)
                let _last = _curr in
                let _last_action = 104 in
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'p' *)
                  | 112 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'e' *)
                      | 101 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'r' *)
                          | 114 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
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
                                (* let _last_action = 104 in*)
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
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'t' *)
                                  | 116 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
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
                                        (* let _last_action = 104 in*)
                                        let next_char, _buf, _len, _curr, _last =
                                          if _curr >= _len then
                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                          else
                                            Char.code (Bytes.unsafe_get _buf _curr),
                                            _buf, _len, (_curr + 1), _last
                                        in
                                        begin match next_char with
                                          (* |'o' *)
                                          | 111 ->
                                            (* *)
                                            let _last = _curr in
                                            (* let _last_action = 104 in*)
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
                                                let _last_action = 69 in
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
                                                    __ocaml_lex_state5 lexbuf 69 (* = last_action *) _buf _len _curr _last
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    69 (* = last_action *)
                                                end
                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'E' *)
              | 69 ->
                (* *)
                let _last = _curr in
                let _last_action = 104 in
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
                    (* let _last_action = 104 in*)
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
                        (* let _last_action = 104 in*)
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
                            (* let _last_action = 104 in*)
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
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'n' *)
                                  | 110 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
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
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'a' *)
                                      | 97 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
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
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          (* |'t' *)
                                          | 116 ->
                                            (* *)
                                            let _last = _curr in
                                            (* let _last_action = 104 in*)
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
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              (* |'i' *)
                                              | 105 ->
                                                (* *)
                                                let _last = _curr in
                                                (* let _last_action = 104 in*)
                                                let next_char, _buf, _len, _curr, _last =
                                                  if _curr >= _len then
                                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                  else
                                                    Char.code (Bytes.unsafe_get _buf _curr),
                                                    _buf, _len, (_curr + 1), _last
                                                in
                                                begin match next_char with
                                                  (* |'o' *)
                                                  | 111 ->
                                                    (* *)
                                                    let _last = _curr in
                                                    (* let _last_action = 104 in*)
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
                                                        (* let _last_action = 104 in*)
                                                        let next_char, _buf, _len, _curr, _last =
                                                          if _curr >= _len then
                                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                          else
                                                            Char.code (Bytes.unsafe_get _buf _curr),
                                                            _buf, _len, (_curr + 1), _last
                                                        in
                                                        begin match next_char with
                                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                          (* |'F' *)
                                                          | 70 ->
                                                            (* *)
                                                            let _last = _curr in
                                                            (* let _last_action = 104 in*)
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
                                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                              (* |'o' *)
                                                              | 111 ->
                                                                (* *)
                                                                let _last = _curr in
                                                                (* let _last_action = 104 in*)
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
                                                                    (* let _last_action = 104 in*)
                                                                    let next_char, _buf, _len, _curr, _last =
                                                                      if _curr >= _len then
                                                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                                      else
                                                                        Char.code (Bytes.unsafe_get _buf _curr),
                                                                        _buf, _len, (_curr + 1), _last
                                                                    in
                                                                    begin match next_char with
                                                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                      (* |'m' *)
                                                                      | 109 ->
                                                                        (* *)
                                                                        let _last = _curr in
                                                                        let _last_action = 47 in
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
                                                                            __ocaml_lex_state5 lexbuf 47 (* = last_action *) _buf _len _curr _last
                                                                          | _ ->
                                                                            let _curr = _last in
                                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                                            47 (* = last_action *)
                                                                        end
                                                                      | _ ->
                                                                        let _curr = _last in
                                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                                        104 (* = last_action *)
                                                                    end
                                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                  | _ ->
                                                                    let _curr = _last in
                                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                                    104 (* = last_action *)
                                                                end
                                                              | _ ->
                                                                let _curr = _last in
                                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                                104 (* = last_action *)
                                                            end
                                                          | _ ->
                                                            let _curr = _last in
                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                            104 (* = last_action *)
                                                        end
                                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                      | _ ->
                                                        let _curr = _last in
                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                        104 (* = last_action *)
                                                    end
                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    104 (* = last_action *)
                                                end
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'r' *)
                  | 114 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'r' *)
                      | 114 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'o' *)
                          | 111 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
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
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'H' *)
                                  | 72 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
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
                                        (* let _last_action = 104 in*)
                                        let next_char, _buf, _len, _curr, _last =
                                          if _curr >= _len then
                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                          else
                                            Char.code (Bytes.unsafe_get _buf _curr),
                                            _buf, _len, (_curr + 1), _last
                                        in
                                        begin match next_char with
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          (* |'n' *)
                                          | 110 ->
                                            (* *)
                                            let _last = _curr in
                                            (* let _last_action = 104 in*)
                                            let next_char, _buf, _len, _curr, _last =
                                              if _curr >= _len then
                                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                              else
                                                Char.code (Bytes.unsafe_get _buf _curr),
                                                _buf, _len, (_curr + 1), _last
                                            in
                                            begin match next_char with
                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              (* |'d' *)
                                              | 100 ->
                                                (* *)
                                                let _last = _curr in
                                                (* let _last_action = 104 in*)
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
                                                    (* let _last_action = 104 in*)
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
                                                        (* let _last_action = 104 in*)
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
                                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                          (* |'r' *)
                                                          | 114 ->
                                                            (* *)
                                                            let _last = _curr in
                                                            let _last_action = 49 in
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
                                                                __ocaml_lex_state5 lexbuf 49 (* = last_action *) _buf _len _curr _last
                                                              | _ ->
                                                                let _curr = _last in
                                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                                49 (* = last_action *)
                                                            end
                                                          | _ ->
                                                            let _curr = _last in
                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                            104 (* = last_action *)
                                                        end
                                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                      | _ ->
                                                        let _curr = _last in
                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                        104 (* = last_action *)
                                                    end
                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    104 (* = last_action *)
                                                end
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'D' *)
              | 68 ->
                (* *)
                let _last = _curr in
                let _last_action = 104 in
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
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'e' *)
                  | 101 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'r' *)
                      | 114 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'i' *)
                          | 105 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'v' *)
                              | 118 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
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
                                    (* let _last_action = 104 in*)
                                    let next_char, _buf, _len, _curr, _last =
                                      if _curr >= _len then
                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                      else
                                        Char.code (Bytes.unsafe_get _buf _curr),
                                        _buf, _len, (_curr + 1), _last
                                    in
                                    begin match next_char with
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'d' *)
                                      | 100 ->
                                        (* *)
                                        let _last = _curr in
                                        let _last_action = 48 in
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
                                            __ocaml_lex_state5 lexbuf 48 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            48 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'F'|'G'|'H'|'I'|'J'|'K'|'M'|'N'|'P'|'Q'|'R'|'T'|'U'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|70|71|72|73|74|75|77|78|80|81|82|84|85|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 55 (* = last_action *) _buf _len _curr _last
              (* |'V' *)
              | 86 ->
                (* *)
                let _last = _curr in
                let _last_action = 104 in
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
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'a' *)
                  | 97 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'r' *)
                      | 114 ->
                        (* *)
                        let _last = _curr in
                        let _last_action = 54 in
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
                            __ocaml_lex_state5 lexbuf 54 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            54 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'L' *)
              | 76 ->
                (* *)
                let _last = _curr in
                let _last_action = 104 in
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
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'b' *)
                      | 98 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            (* let _last_action = 104 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'l' *)
                              | 108 ->
                                (* *)
                                let _last = _curr in
                                let _last_action = 100 in
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
                                    __ocaml_lex_state5 lexbuf 100 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    100 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'S' *)
              | 83 ->
                (* *)
                let _last = _curr in
                let _last_action = 104 in
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
                    (* let _last_action = 104 in*)
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
                        (* let _last_action = 104 in*)
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
                            (* let _last_action = 104 in*)
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
                                (* let _last_action = 104 in*)
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
                                    (* let _last_action = 104 in*)
                                    let next_char, _buf, _len, _curr, _last =
                                      if _curr >= _len then
                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                      else
                                        Char.code (Bytes.unsafe_get _buf _curr),
                                        _buf, _len, (_curr + 1), _last
                                    in
                                    begin match next_char with
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'V' *)
                                      | 86 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
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
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          (* |'a' *)
                                          | 97 ->
                                            (* *)
                                            let _last = _curr in
                                            (* let _last_action = 104 in*)
                                            let next_char, _buf, _len, _curr, _last =
                                              if _curr >= _len then
                                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                              else
                                                Char.code (Bytes.unsafe_get _buf _curr),
                                                _buf, _len, (_curr + 1), _last
                                            in
                                            begin match next_char with
                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              (* |'l' *)
                                              | 108 ->
                                                (* *)
                                                let _last = _curr in
                                                (* let _last_action = 104 in*)
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
                                                    (* let _last_action = 104 in*)
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
                                                        let _last_action = 22 in
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
                                                            __ocaml_lex_state5 lexbuf 22 (* = last_action *) _buf _len _curr _last
                                                          | _ ->
                                                            let _curr = _last in
                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                            22 (* = last_action *)
                                                        end
                                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                      | _ ->
                                                        let _curr = _last in
                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                        104 (* = last_action *)
                                                    end
                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'v'|'w'|'x'|'y'|'z' *)
                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|118|119|120|121|122 ->
                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    104 (* = last_action *)
                                                end
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                55 (* = last_action *)
            end
          (* |'f' *)
          | 102 ->
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
                __ocaml_lex_state5 lexbuf 35 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                35 (* = last_action *)
            end
          (* |'r' *)
          | 114 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'r' *)
              | 114 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
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
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'e' *)
                  | 101 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        (* let _last_action = 104 in*)
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
                            (* let _last_action = 104 in*)
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
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'v' *)
                              | 118 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
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
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'a' *)
                                  | 97 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
                                    let next_char, _buf, _len, _curr, _last =
                                      if _curr >= _len then
                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                      else
                                        Char.code (Bytes.unsafe_get _buf _curr),
                                        _buf, _len, (_curr + 1), _last
                                    in
                                    begin match next_char with
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'n' *)
                                      | 110 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
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
                                            let _last_action = 101 in
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
                                                __ocaml_lex_state5 lexbuf 101 (* = last_action *) _buf _len _curr _last
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                101 (* = last_action *)
                                            end
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|103|104|105|106|107|108|109|111|112|113|116|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          (* |'n' *)
          | 110 ->
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
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 4 (* = last_action *) _buf _len _curr _last
              (* |'t' *)
              | 116 ->
                (* *)
                let _last = _curr in
                let _last_action = 104 in
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
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'r' *)
                  | 114 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'o' *)
                      | 111 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            let _last_action = 31 in
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
                                __ocaml_lex_state5 lexbuf 31 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                31 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'d' *)
              | 100 ->
                (* *)
                let _last = _curr in
                let _last_action = 104 in
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
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'c' *)
                      | 99 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'t' *)
                          | 116 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
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
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'o' *)
                                  | 111 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
                                    let next_char, _buf, _len, _curr, _last =
                                      if _curr >= _len then
                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                      else
                                        Char.code (Bytes.unsafe_get _buf _curr),
                                        _buf, _len, (_curr + 1), _last
                                    in
                                    begin match next_char with
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'n' *)
                                      | 110 ->
                                        (* *)
                                        let _last = _curr in
                                        let _last_action = 40 in
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
                                            __ocaml_lex_state5 lexbuf 40 (* = last_action *) _buf _len _curr _last
                                          (* |'*' *)
                                          | 42 ->
                                            (* *)
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            41
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            40 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  (* |'v' *)
                                  | 118 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
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
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'e' *)
                                      | 101 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
                                        let next_char, _buf, _len, _curr, _last =
                                          if _curr >= _len then
                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                          else
                                            Char.code (Bytes.unsafe_get _buf _curr),
                                            _buf, _len, (_curr + 1), _last
                                        in
                                        begin match next_char with
                                          (* |'A' *)
                                          | 65 ->
                                            (* *)
                                            let _last = _curr in
                                            (* let _last_action = 104 in*)
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
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              (* |'r' *)
                                              | 114 ->
                                                (* *)
                                                let _last = _curr in
                                                (* let _last_action = 104 in*)
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
                                                    (* let _last_action = 104 in*)
                                                    let next_char, _buf, _len, _curr, _last =
                                                      if _curr >= _len then
                                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                      else
                                                        Char.code (Bytes.unsafe_get _buf _curr),
                                                        _buf, _len, (_curr + 1), _last
                                                    in
                                                    begin match next_char with
                                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                      (* |'s' *)
                                                      | 115 ->
                                                        (* *)
                                                        let _last = _curr in
                                                        let _last_action = 99 in
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
                                                            __ocaml_lex_state5 lexbuf 99 (* = last_action *) _buf _len _curr _last
                                                          | _ ->
                                                            let _curr = _last in
                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                            99 (* = last_action *)
                                                        end
                                                      | _ ->
                                                        let _curr = _last in
                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                        104 (* = last_action *)
                                                    end
                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    104 (* = last_action *)
                                                end
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|112|113|114|115|116|117|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                4 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'\t'|' ' *)
      |9|32 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        0
      (* |'w' *)
      | 119 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'h' *)
          | 104 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'i' *)
              | 105 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'c' *)
                  | 99 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'h' *)
                      | 104 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'A' *)
                          | 65 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
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
                                (* let _last_action = 104 in*)
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
                                    (* let _last_action = 104 in*)
                                    let next_char, _buf, _len, _curr, _last =
                                      if _curr >= _len then
                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                      else
                                        Char.code (Bytes.unsafe_get _buf _curr),
                                        _buf, _len, (_curr + 1), _last
                                    in
                                    begin match next_char with
                                      (* |'I' *)
                                      | 73 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
                                        let next_char, _buf, _len, _curr, _last =
                                          if _curr >= _len then
                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                          else
                                            Char.code (Bytes.unsafe_get _buf _curr),
                                            _buf, _len, (_curr + 1), _last
                                        in
                                        begin match next_char with
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          (* |'d' *)
                                          | 100 ->
                                            (* *)
                                            let _last = _curr in
                                            (* let _last_action = 104 in*)
                                            let next_char, _buf, _len, _curr, _last =
                                              if _curr >= _len then
                                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                              else
                                                Char.code (Bytes.unsafe_get _buf _curr),
                                                _buf, _len, (_curr + 1), _last
                                            in
                                            begin match next_char with
                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'y'|'z' *)
                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|121|122 ->
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              (* |'x' *)
                                              | 120 ->
                                                (* *)
                                                let _last = _curr in
                                                let _last_action = 76 in
                                                let next_char, _buf, _len, _curr, _last =
                                                  if _curr >= _len then
                                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                  else
                                                    Char.code (Bytes.unsafe_get _buf _curr),
                                                    _buf, _len, (_curr + 1), _last
                                                in
                                                begin match next_char with
                                                  (* |'T' *)
                                                  | 84 ->
                                                    (* *)
                                                    let _last = _curr in
                                                    let _last_action = 104 in
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
                                                        (* let _last_action = 104 in*)
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
                                                            (* let _last_action = 104 in*)
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
                                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                              (* |'t' *)
                                                              | 116 ->
                                                                (* *)
                                                                let _last = _curr in
                                                                let _last_action = 77 in
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
                                                                    __ocaml_lex_state5 lexbuf 77 (* = last_action *) _buf _len _curr _last
                                                                  | _ ->
                                                                    let _curr = _last in
                                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                                    77 (* = last_action *)
                                                                end
                                                              | _ ->
                                                                let _curr = _last in
                                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                                104 (* = last_action *)
                                                            end
                                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                          | _ ->
                                                            let _curr = _last in
                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                            104 (* = last_action *)
                                                        end
                                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                      | _ ->
                                                        let _curr = _last in
                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                        104 (* = last_action *)
                                                    end
                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                    __ocaml_lex_state5 lexbuf 76 (* = last_action *) _buf _len _curr _last
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    76 (* = last_action *)
                                                end
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'e' *)
          | 101 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'a' *)
              | 97 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'k' *)
                  | 107 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'s' *)
                      | 115 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            (* let _last_action = 104 in*)
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
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'a' *)
                              | 97 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
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
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'t' *)
                                  | 116 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
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
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'e' *)
                                      | 101 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
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
                                            let _last_action = 83 in
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
                                                __ocaml_lex_state5 lexbuf 83 (* = last_action *) _buf _len _curr _last
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                83 (* = last_action *)
                                            end
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          (* |'i' *)
          | 105 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'n' *)
                  | 110 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'s' *)
                          | 115 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'s' *)
                              | 115 ->
                                (* *)
                                let _last = _curr in
                                let _last_action = 70 in
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
                                    __ocaml_lex_state5 lexbuf 70 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    70 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'h' *)
                  | 104 ->
                    (* *)
                    let _last = _curr in
                    let _last_action = 81 in
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
                        __ocaml_lex_state5 lexbuf 81 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        81 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'u' *)
      | 117 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          (* |'n' *)
          | 110 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'f' *)
              | 102 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'o' *)
                  | 111 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'d' *)
                          | 100 ->
                            (* *)
                            let _last = _curr in
                            let _last_action = 96 in
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
                                __ocaml_lex_state5 lexbuf 96 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                96 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'d' *)
              | 100 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
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
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'o' *)
                  | 111 ->
                    (* *)
                    let _last = _curr in
                    let _last_action = 64 in
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
                        __ocaml_lex_state5 lexbuf 64 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        64 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'e'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|101|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'f' *)
      | 102 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|106|107|108|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          (* |'o' *)
          | 111 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'r' *)
              | 114 ->
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
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 2 (* = last_action *) _buf _len _curr _last
                  (* |'a' *)
                  | 97 ->
                    (* *)
                    let _last = _curr in
                    let _last_action = 104 in
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'l' *)
                      | 108 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            let _last_action = 11 in
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'V' *)
                              | 86 ->
                                (* *)
                                let _last = _curr in
                                let _last_action = 104 in
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
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'a' *)
                                  | 97 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
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
                                        (* let _last_action = 104 in*)
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
                                            let _last_action = 13 in
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
                                                __ocaml_lex_state5 lexbuf 13 (* = last_action *) _buf _len _curr _last
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                13 (* = last_action *)
                                            end
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 11 (* = last_action *) _buf _len _curr _last
                              (* |'*' *)
                              | 42 ->
                                (* *)
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                67
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                11 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    2 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'i' *)
          | 105 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'n' *)
              | 110 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'d' *)
                  | 100 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'V' *)
                      | 86 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'a' *)
                          | 97 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
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
                                let _last_action = 92 in
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'T' *)
                                  | 84 ->
                                    (* *)
                                    let _last = _curr in
                                    let _last_action = 104 in
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
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'e' *)
                                      | 101 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
                                        let next_char, _buf, _len, _curr, _last =
                                          if _curr >= _len then
                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                          else
                                            Char.code (Bytes.unsafe_get _buf _curr),
                                            _buf, _len, (_curr + 1), _last
                                        in
                                        begin match next_char with
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          (* |'s' *)
                                          | 115 ->
                                            (* *)
                                            let _last = _curr in
                                            (* let _last_action = 104 in*)
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
                                                let _last_action = 93 in
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
                                                    __ocaml_lex_state5 lexbuf 93 (* = last_action *) _buf _len _curr _last
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    93 (* = last_action *)
                                                end
                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 92 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    92 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |']' *)
      | 93 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        74
      (* |'P' *)
      | 80 ->
        (* *)
        let _last = _curr in
        let _last_action = 105 in
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
            (* let _last_action = 105 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'o' *)
              | 111 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 105 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
                  (* |'o' *)
                  | 111 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 105 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'f' *)
                      | 102 ->
                        (* *)
                        let _last = _curr in
                        let _last_action = 30 in
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state4 lexbuf 30 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            30 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        105 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    105 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                105 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            105 (* = last_action *)
        end
      (* |')' *)
      | 41 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        9
      (* |'t' *)
      | 116 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'h' *)
          | 104 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'e' *)
              | 101 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 36 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        36 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'a' *)
          | 97 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'g' *)
                  | 103 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        (* let _last_action = 104 in*)
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
                            (* let _last_action = 104 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'s' *)
                              | 115 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'F' *)
                                  | 70 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
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
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'r' *)
                                      | 114 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
                                        let next_char, _buf, _len, _curr, _last =
                                          if _curr >= _len then
                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                          else
                                            Char.code (Bytes.unsafe_get _buf _curr),
                                            _buf, _len, (_curr + 1), _last
                                        in
                                        begin match next_char with
                                          (* |'o' *)
                                          | 111 ->
                                            (* *)
                                            let _last = _curr in
                                            (* let _last_action = 104 in*)
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
                                                (* let _last_action = 104 in*)
                                                let next_char, _buf, _len, _curr, _last =
                                                  if _curr >= _len then
                                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                  else
                                                    Char.code (Bytes.unsafe_get _buf _curr),
                                                    _buf, _len, (_curr + 1), _last
                                                in
                                                begin match next_char with
                                                  (* |'O' *)
                                                  | 79 ->
                                                    (* *)
                                                    let _last = _curr in
                                                    (* let _last_action = 104 in*)
                                                    let next_char, _buf, _len, _curr, _last =
                                                      if _curr >= _len then
                                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                      else
                                                        Char.code (Bytes.unsafe_get _buf _curr),
                                                        _buf, _len, (_curr + 1), _last
                                                    in
                                                    begin match next_char with
                                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|113|114|115|116|117|118|119|120|121|122 ->
                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                      (* |'p' *)
                                                      | 112 ->
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
                                                            __ocaml_lex_state5 lexbuf 24 (* = last_action *) _buf _len _curr _last
                                                          | _ ->
                                                            let _curr = _last in
                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                            24 (* = last_action *)
                                                        end
                                                      | _ ->
                                                        let _curr = _last in
                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                        104 (* = last_action *)
                                                    end
                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'P'|'Q'|'R'|'S'|'T'|'U'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|80|81|82|83|84|85|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                  (* |'V' *)
                                                  | 86 ->
                                                    (* *)
                                                    let _last = _curr in
                                                    (* let _last_action = 104 in*)
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
                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                      (* |'a' *)
                                                      | 97 ->
                                                        (* *)
                                                        let _last = _curr in
                                                        (* let _last_action = 104 in*)
                                                        let next_char, _buf, _len, _curr, _last =
                                                          if _curr >= _len then
                                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                          else
                                                            Char.code (Bytes.unsafe_get _buf _curr),
                                                            _buf, _len, (_curr + 1), _last
                                                        in
                                                        begin match next_char with
                                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                          (* |'l' *)
                                                          | 108 ->
                                                            (* *)
                                                            let _last = _curr in
                                                            (* let _last_action = 104 in*)
                                                            let next_char, _buf, _len, _curr, _last =
                                                              if _curr >= _len then
                                                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                              else
                                                                Char.code (Bytes.unsafe_get _buf _curr),
                                                                _buf, _len, (_curr + 1), _last
                                                            in
                                                            begin match next_char with
                                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'v'|'w'|'x'|'y'|'z' *)
                                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|118|119|120|121|122 ->
                                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                              (* |'u' *)
                                                              | 117 ->
                                                                (* *)
                                                                let _last = _curr in
                                                                (* let _last_action = 104 in*)
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
                                                                    let _last_action = 23 in
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
                                                                        __ocaml_lex_state5 lexbuf 23 (* = last_action *) _buf _len _curr _last
                                                                      | _ ->
                                                                        let _curr = _last in
                                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                                        23 (* = last_action *)
                                                                    end
                                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                  | _ ->
                                                                    let _curr = _last in
                                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                                    104 (* = last_action *)
                                                                end
                                                              | _ ->
                                                                let _curr = _last in
                                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                                104 (* = last_action *)
                                                            end
                                                          | _ ->
                                                            let _curr = _last in
                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                            104 (* = last_action *)
                                                        end
                                                      | _ ->
                                                        let _curr = _last in
                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                        104 (* = last_action *)
                                                    end
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    104 (* = last_action *)
                                                end
                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|105|106|107|108|109|110|112|113|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          (* |'o' *)
          | 111 ->
            (* *)
            let _last = _curr in
            let _last_action = 45 in
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
                __ocaml_lex_state5 lexbuf 45 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                45 (* = last_action *)
            end
          (* |'r' *)
          | 114 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                (* let _last_action = 104 in*)
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
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'e' *)
                  | 101 ->
                    (* *)
                    let _last = _curr in
                    let _last_action = 66 in
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
                        __ocaml_lex_state5 lexbuf 66 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        66 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'\\' *)
      | 92 ->
        (* *)
        let _last = _curr in
        let _last_action = 108 in
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
            51
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            108 (* = last_action *)
        end
      (* |'\n'|'\r' *)
      |10|13 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        1
      (* |'l' *)
      | 108 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
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
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'b' *)
              | 98 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
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
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'l' *)
                      | 108 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'O' *)
                          | 79 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
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
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'f' *)
                              | 102 ->
                                (* *)
                                let _last = _curr in
                                let _last_action = 86 in
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
                                    __ocaml_lex_state5 lexbuf 86 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    86 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          (* |'e' *)
          | 101 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                let _last_action = 97 in
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
                    __ocaml_lex_state5 lexbuf 97 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    97 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'=' *)
      | 61 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        16
      (* |'n' *)
      | 110 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'o' *)
          | 111 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'O' *)
              | 79 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'p' *)
                  | 112 ->
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
                        __ocaml_lex_state5 lexbuf 38 (* = last_action *) _buf _len _curr _last
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
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'t' *)
              | 116 ->
                (* *)
                let _last = _curr in
                let _last_action = 58 in
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
                    __ocaml_lex_state5 lexbuf 58 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    58 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'T' *)
      | 84 ->
        (* *)
        let _last = _curr in
        let _last_action = 105 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'h' *)
          | 104 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 105 in*)
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
                (* let _last_action = 105 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
                  (* |'o' *)
                  | 111 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 105 in*)
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
                        (* let _last_action = 105 in*)
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
                            (* let _last_action = 105 in*)
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
                                let _last_action = 6 in
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state4 lexbuf 6 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    6 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                105 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            105 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        105 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    105 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                105 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            105 (* = last_action *)
        end
      (* |'c' *)
      | 99 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
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
            (* let _last_action = 104 in*)
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
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'e' *)
              | 101 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
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
                    (* let _last_action = 104 in*)
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
                        let _last_action = 95 in
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
                            __ocaml_lex_state5 lexbuf 95 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            95 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'o' *)
          | 111 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'n' *)
              | 110 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
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
                    (* let _last_action = 104 in*)
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
                        (* let _last_action = 104 in*)
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
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'r' *)
                          | 114 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'u' *)
                              | 117 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'c' *)
                                  | 99 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
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
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'t' *)
                                      | 116 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
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
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          (* |'e' *)
                                          | 101 ->
                                            (* *)
                                            let _last = _curr in
                                            (* let _last_action = 104 in*)
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
                                                let _last_action = 75 in
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
                                                    __ocaml_lex_state5 lexbuf 75 (* = last_action *) _buf _len _curr _last
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    75 (* = last_action *)
                                                end
                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'t' *)
                  | 116 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'x' *)
                          | 120 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
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
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'t' *)
                              | 116 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
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
                                    (* let _last_action = 104 in*)
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
                                        (* let _last_action = 104 in*)
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
                                            (* let _last_action = 104 in*)
                                            let next_char, _buf, _len, _curr, _last =
                                              if _curr >= _len then
                                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                              else
                                                Char.code (Bytes.unsafe_get _buf _curr),
                                                _buf, _len, (_curr + 1), _last
                                            in
                                            begin match next_char with
                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                              |39|45|48|49|50|51|52|53|54|55|56|57|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              (* |'A' *)
                                              | 65 ->
                                                (* *)
                                                let _last = _curr in
                                                (* let _last_action = 104 in*)
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
                                                    (* let _last_action = 104 in*)
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
                                                        (* let _last_action = 104 in*)
                                                        let next_char, _buf, _len, _curr, _last =
                                                          if _curr >= _len then
                                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                          else
                                                            Char.code (Bytes.unsafe_get _buf _curr),
                                                            _buf, _len, (_curr + 1), _last
                                                        in
                                                        begin match next_char with
                                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                          (* |'s' *)
                                                          | 115 ->
                                                            (* *)
                                                            let _last = _curr in
                                                            let _last_action = 28 in
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
                                                                __ocaml_lex_state5 lexbuf 28 (* = last_action *) _buf _len _curr _last
                                                              | _ ->
                                                                let _curr = _last in
                                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                                28 (* = last_action *)
                                                            end
                                                          | _ ->
                                                            let _curr = _last in
                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                            104 (* = last_action *)
                                                        end
                                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                      | _ ->
                                                        let _curr = _last in
                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                        104 (* = last_action *)
                                                    end
                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    104 (* = last_action *)
                                                end
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'a' *)
                      | 97 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'i' *)
                          | 105 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'n' *)
                              | 110 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'s' *)
                                  | 115 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
                                    let next_char, _buf, _len, _curr, _last =
                                      if _curr >= _len then
                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                      else
                                        Char.code (Bytes.unsafe_get _buf _curr),
                                        _buf, _len, (_curr + 1), _last
                                    in
                                    begin match next_char with
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'S' *)
                                      | 83 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
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
                                            (* let _last_action = 104 in*)
                                            let next_char, _buf, _len, _curr, _last =
                                              if _curr >= _len then
                                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                              else
                                                Char.code (Bytes.unsafe_get _buf _curr),
                                                _buf, _len, (_curr + 1), _last
                                            in
                                            begin match next_char with
                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              (* |'b' *)
                                              | 98 ->
                                                (* *)
                                                let _last = _curr in
                                                (* let _last_action = 104 in*)
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
                                                    (* let _last_action = 104 in*)
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
                                                        (* let _last_action = 104 in*)
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
                                                            (* let _last_action = 104 in*)
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
                                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                              (* |'t' *)
                                                              | 116 ->
                                                                (* *)
                                                                let _last = _curr in
                                                                (* let _last_action = 104 in*)
                                                                let next_char, _buf, _len, _curr, _last =
                                                                  if _curr >= _len then
                                                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                                  else
                                                                    Char.code (Bytes.unsafe_get _buf _curr),
                                                                    _buf, _len, (_curr + 1), _last
                                                                in
                                                                begin match next_char with
                                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'v'|'w'|'x'|'y'|'z' *)
                                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|118|119|120|121|122 ->
                                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                  (* |'u' *)
                                                                  | 117 ->
                                                                    (* *)
                                                                    let _last = _curr in
                                                                    (* let _last_action = 104 in*)
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
                                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                      (* |'t' *)
                                                                      | 116 ->
                                                                        (* *)
                                                                        let _last = _curr in
                                                                        (* let _last_action = 104 in*)
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
                                                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                          (* |'i' *)
                                                                          | 105 ->
                                                                            (* *)
                                                                            let _last = _curr in
                                                                            (* let _last_action = 104 in*)
                                                                            let next_char, _buf, _len, _curr, _last =
                                                                              if _curr >= _len then
                                                                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                                              else
                                                                                Char.code (Bytes.unsafe_get _buf _curr),
                                                                                _buf, _len, (_curr + 1), _last
                                                                            in
                                                                            begin match next_char with
                                                                              (* |'o' *)
                                                                              | 111 ->
                                                                                (* *)
                                                                                let _last = _curr in
                                                                                (* let _last_action = 104 in*)
                                                                                let next_char, _buf, _len, _curr, _last =
                                                                                  if _curr >= _len then
                                                                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                                                  else
                                                                                    Char.code (Bytes.unsafe_get _buf _curr),
                                                                                    _buf, _len, (_curr + 1), _last
                                                                                in
                                                                                begin match next_char with
                                                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                                  (* |'n' *)
                                                                                  | 110 ->
                                                                                    (* *)
                                                                                    let _last = _curr in
                                                                                    let _last_action = 25 in
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
                                                                                        __ocaml_lex_state5 lexbuf 25 (* = last_action *) _buf _len _curr _last
                                                                                      | _ ->
                                                                                        let _curr = _last in
                                                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                                                        25 (* = last_action *)
                                                                                    end
                                                                                  | _ ->
                                                                                    let _curr = _last in
                                                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                                                    104 (* = last_action *)
                                                                                end
                                                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
                                                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                              | _ ->
                                                                                let _curr = _last in
                                                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                                                104 (* = last_action *)
                                                                            end
                                                                          | _ ->
                                                                            let _curr = _last in
                                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                                            104 (* = last_action *)
                                                                        end
                                                                      | _ ->
                                                                        let _curr = _last in
                                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                                        104 (* = last_action *)
                                                                    end
                                                                  | _ ->
                                                                    let _curr = _last in
                                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                                    104 (* = last_action *)
                                                                end
                                                              | _ ->
                                                                let _curr = _last in
                                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                                104 (* = last_action *)
                                                            end
                                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                          | _ ->
                                                            let _curr = _last in
                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                            104 (* = last_action *)
                                                        end
                                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                      | _ ->
                                                        let _curr = _last in
                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                        104 (* = last_action *)
                                                    end
                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    104 (* = last_action *)
                                                end
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'a' *)
          | 97 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                (* let _last_action = 104 in*)
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
                    let _last_action = 33 in
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'*' *)
                      | 42 ->
                        (* *)
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        34
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 33 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        33 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'n' *)
              | 110 ->
                (* *)
                let _last = _curr in
                let _last_action = 91 in
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
                    __ocaml_lex_state5 lexbuf 91 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    91 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'a' *)
      | 97 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
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
            (* let _last_action = 104 in*)
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
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'_' *)
                  | 95 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'e' *)
                      | 101 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'n' *)
                          | 110 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
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
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'v' *)
                              | 118 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'s' *)
                                  | 115 ->
                                    (* *)
                                    let _last = _curr in
                                    let _last_action = 88 in
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
                                        __ocaml_lex_state5 lexbuf 88 (* = last_action *) _buf _len _curr _last
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        88 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'o'|'q'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|111|113|116|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          (* |'r' *)
          | 114 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                (* let _last_action = 104 in*)
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
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'y' *)
                      | 121 ->
                        (* *)
                        let _last = _curr in
                        let _last_action = 79 in
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
                            __ocaml_lex_state5 lexbuf 79 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            79 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'s' *)
          | 115 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'s' *)
              | 115 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
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
                    (* let _last_action = 104 in*)
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
                        (* let _last_action = 104 in*)
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
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'t' *)
                          | 116 ->
                            (* *)
                            let _last = _curr in
                            let _last_action = 94 in
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
                                __ocaml_lex_state5 lexbuf 94 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                94 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'p' *)
          | 112 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'p' *)
              | 112 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'l' *)
                  | 108 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'y' *)
                      | 121 ->
                        (* *)
                        let _last = _curr in
                        let _last_action = 44 in
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
                            __ocaml_lex_state5 lexbuf 44 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            44 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'n' *)
          | 110 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                let _last_action = 57 in
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
                    __ocaml_lex_state5 lexbuf 57 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    57 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'(' *)
      | 40 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        8
      (* |'-' *)
      | 45 ->
        (* *)
        let _last = _curr in
        let _last_action = 108 in
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
            14
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            108 (* = last_action *)
        end
      (* |'h'|'j'|'k'|'q'|'x'|'y'|'z' *)
      |104|106|107|113|120|121|122 ->
        __ocaml_lex_state5 lexbuf _last_action _buf _len _curr _last
      (* |',' *)
      | 44 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        5
      (* |'v' *)
      | 118 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
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
            (* let _last_action = 104 in*)
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
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'u' *)
                  | 117 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'e' *)
                      | 101 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'A' *)
                          | 65 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
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
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'g' *)
                                  | 103 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
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
                                        let _last_action = 20 in
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
                                            __ocaml_lex_state5 lexbuf 20 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            20 (* = last_action *)
                                        end
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'s' *)
                          | 115 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'O' *)
                              | 79 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'f' *)
                                  | 102 ->
                                    (* *)
                                    let _last = _curr in
                                    let _last_action = 19 in
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
                                        __ocaml_lex_state5 lexbuf 19 (* = last_action *) _buf _len _curr _last
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        19 (* = last_action *)
                                    end
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'/' *)
      | 47 ->
        (* *)
        let _last = _curr in
        let _last_action = 108 in
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
            17
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            108 (* = last_action *)
        end
      (* |'b' *)
      | 98 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
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
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'c' *)
              | 99 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'k' *)
                  | 107 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'c' *)
                      | 99 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'h' *)
                          | 104 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
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
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'a' *)
                              | 97 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
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
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'i' *)
                                  | 105 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
                                    let next_char, _buf, _len, _curr, _last =
                                      if _curr >= _len then
                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                      else
                                        Char.code (Bytes.unsafe_get _buf _curr),
                                        _buf, _len, (_curr + 1), _last
                                    in
                                    begin match next_char with
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'n' *)
                                      | 110 ->
                                        (* *)
                                        let _last = _curr in
                                        let _last_action = 46 in
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
                                            __ocaml_lex_state5 lexbuf 46 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            46 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'I' *)
      | 73 ->
        (* *)
        let _last = _curr in
        let _last_action = 105 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
          (* |'M' *)
          | 77 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 105 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
              (* |'P' *)
              | 80 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 105 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'L' *)
                  | 76 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 105 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'Y' *)
                      | 89 ->
                        (* *)
                        let _last = _curr in
                        let _last_action = 26 in
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state4 lexbuf 26 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            26 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        105 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    105 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                105 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            105 (* = last_action *)
        end
      (* |'A' *)
      | 65 ->
        (* *)
        let _last = _curr in
        let _last_action = 105 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
          (* |'N' *)
          | 78 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 105 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'D' *)
              | 68 ->
                (* *)
                let _last = _curr in
                let _last_action = 18 in
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state4 lexbuf 18 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    18 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                105 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            105 (* = last_action *)
        end
      (* |'m' *)
      | 109 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
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
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          (* |'a' *)
          | 97 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'p' *)
              | 112 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'N' *)
                  | 78 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'e' *)
                      | 101 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'w' *)
                          | 119 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'E' *)
                              | 69 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'n' *)
                                  | 110 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
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
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'t' *)
                                      | 116 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
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
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          (* |'r' *)
                                          | 114 ->
                                            (* *)
                                            let _last = _curr in
                                            (* let _last_action = 104 in*)
                                            let next_char, _buf, _len, _curr, _last =
                                              if _curr >= _len then
                                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                              else
                                                Char.code (Bytes.unsafe_get _buf _curr),
                                                _buf, _len, (_curr + 1), _last
                                            in
                                            begin match next_char with
                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'z' *)
                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|122 ->
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              (* |'y' *)
                                              | 121 ->
                                                (* *)
                                                let _last = _curr in
                                                let _last_action = 90 in
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
                                                    __ocaml_lex_state5 lexbuf 90 (* = last_action *) _buf _len _curr _last
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    90 (* = last_action *)
                                                end
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'_' *)
                  | 95 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'n' *)
                          | 110 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'v' *)
                              | 118 ->
                                (* *)
                                let _last = _curr in
                                let _last_action = 85 in
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
                                    __ocaml_lex_state5 lexbuf 85 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    85 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'l'|'m'|'n'|'o'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|108|109|110|111|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'k' *)
              | 107 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
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
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'e' *)
                  | 101 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'C' *)
                      | 67 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'o' *)
                          | 111 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'n' *)
                              | 110 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'s' *)
                                  | 115 ->
                                    (* *)
                                    let _last = _curr in
                                    let _last_action = 98 in
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
                                        __ocaml_lex_state5 lexbuf 98 (* = last_action *) _buf _len _curr _last
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        98 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'O' *)
      | 79 ->
        (* *)
        let _last = _curr in
        let _last_action = 105 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'R' *)
          | 82 ->
            (* *)
            let _last = _curr in
            let _last_action = 52 in
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state4 lexbuf 52 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                52 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state4 lexbuf 105 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            105 (* = last_action *)
        end
      (* |'B'|'C'|'D'|'E'|'F'|'G'|'H'|'J'|'K'|'L'|'M'|'N'|'Q'|'R'|'S'|'U'|'V'|'W'|'X'|'Y'|'Z' *)
      |66|67|68|69|70|71|72|74|75|76|77|78|81|82|83|85|86|87|88|89|90 ->
        __ocaml_lex_state4 lexbuf _last_action _buf _len _curr _last
      (* |'r' *)
      | 114 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
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
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'n' *)
              | 110 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'g' *)
                  | 103 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'e' *)
                      | 101 ->
                        (* *)
                        let _last = _curr in
                        let _last_action = 78 in
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
                            __ocaml_lex_state5 lexbuf 78 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            78 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'e' *)
          | 101 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'f' *)
              | 102 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'O' *)
                  | 79 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'f' *)
                      | 102 ->
                        (* *)
                        let _last = _curr in
                        let _last_action = 87 in
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
                            __ocaml_lex_state5 lexbuf 87 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            87 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |':' *)
      | 58 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        10
      (* |'g' *)
      | 103 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
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
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          (* |'e' *)
          | 101 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'t' *)
              | 116 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'A' *)
                  | 65 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'r' *)
                      | 114 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            (* let _last_action = 104 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'T' *)
                              | 84 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'y' *)
                                  | 121 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
                                    let next_char, _buf, _len, _curr, _last =
                                      if _curr >= _len then
                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                      else
                                        Char.code (Bytes.unsafe_get _buf _curr),
                                        _buf, _len, (_curr + 1), _last
                                    in
                                    begin match next_char with
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|113|114|115|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'p' *)
                                      | 112 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
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
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          (* |'e' *)
                                          | 101 ->
                                            (* *)
                                            let _last = _curr in
                                            let _last_action = 50 in
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
                                                __ocaml_lex_state5 lexbuf 50 (* = last_action *) _buf _len _curr _last
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                50 (* = last_action *)
                                            end
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              (* |'s' *)
                              | 115 ->
                                (* *)
                                let _last = _curr in
                                let _last_action = 29 in
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
                                    __ocaml_lex_state5 lexbuf 29 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    29 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'_' *)
      | 95 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        7
      (* |'[' *)
      | 91 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        73
      (* |'o' *)
      | 111 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
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
            let _last_action = 42 in
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 42 (* = last_action *) _buf _len _curr _last
              (* |'l' *)
              | 108 ->
                (* *)
                let _last = _curr in
                let _last_action = 104 in
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'y' *)
                  | 121 ->
                    (* *)
                    let _last = _curr in
                    let _last_action = 102 in
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
                        __ocaml_lex_state5 lexbuf 102 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        102 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                42 (* = last_action *)
            end
          (* |'f' *)
          | 102 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'T' *)
              | 84 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'y' *)
                  | 121 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'p' *)
                      | 112 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            let _last_action = 21 in
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
                                __ocaml_lex_state5 lexbuf 21 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                21 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'r' *)
          | 114 ->
            (* *)
            let _last = _curr in
            let _last_action = 56 in
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
                __ocaml_lex_state5 lexbuf 56 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                56 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|103|104|105|106|107|108|109|111|112|113|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'.' *)
      | 46 ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        12
      (* |'e' *)
      | 101 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
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
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'d' *)
              | 100 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'O' *)
                  | 79 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'R' *)
                      | 82 ->
                        (* *)
                        let _last = _curr in
                        let _last_action = 59 in
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
                            __ocaml_lex_state5 lexbuf 59 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            59 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'I' *)
                  | 73 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'M' *)
                      | 77 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'P' *)
                          | 80 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'L' *)
                              | 76 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'Y' *)
                                  | 89 ->
                                    (* *)
                                    let _last = _curr in
                                    let _last_action = 61 in
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
                                        __ocaml_lex_state5 lexbuf 61 (* = last_action *) _buf _len _curr _last
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        61 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'i' *)
                  | 105 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'f' *)
                      | 102 ->
                        (* *)
                        let _last = _curr in
                        let _last_action = 62 in
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
                            __ocaml_lex_state5 lexbuf 62 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            62 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'w' *)
                  | 119 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'i' *)
                      | 105 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            (* let _last_action = 104 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'n' *)
                              | 110 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
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
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'e' *)
                                  | 101 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
                                    let next_char, _buf, _len, _curr, _last =
                                      if _curr >= _len then
                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                      else
                                        Char.code (Bytes.unsafe_get _buf _curr),
                                        _buf, _len, (_curr + 1), _last
                                    in
                                    begin match next_char with
                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'s' *)
                                      | 115 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
                                        let next_char, _buf, _len, _curr, _last =
                                          if _curr >= _len then
                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                          else
                                            Char.code (Bytes.unsafe_get _buf _curr),
                                            _buf, _len, (_curr + 1), _last
                                        in
                                        begin match next_char with
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          (* |'s' *)
                                          | 115 ->
                                            (* *)
                                            let _last = _curr in
                                            let _last_action = 71 in
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
                                                __ocaml_lex_state5 lexbuf 71 (* = last_action *) _buf _len _curr _last
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                71 (* = last_action *)
                                            end
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'J'|'K'|'L'|'M'|'N'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|66|67|68|69|70|71|72|74|75|76|77|78|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|103|104|106|107|108|109|110|111|112|113|114|115|116|117|118|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'f' *)
                  | 102 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'o' *)
                      | 111 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            let _last_action = 43 in
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
                                __ocaml_lex_state5 lexbuf 43 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                43 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'A' *)
                  | 65 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'N' *)
                      | 78 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'D' *)
                          | 68 ->
                            (* *)
                            let _last = _curr in
                            let _last_action = 60 in
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
                                __ocaml_lex_state5 lexbuf 60 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                60 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'l' *)
          | 108 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 37 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        37 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'v' *)
          | 118 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'a' *)
              | 97 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
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
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'u' *)
                      | 117 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'a' *)
                          | 97 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
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
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'t' *)
                              | 116 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
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
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'i' *)
                                  | 105 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
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
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'o' *)
                                      | 111 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
                                        let next_char, _buf, _len, _curr, _last =
                                          if _curr >= _len then
                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                          else
                                            Char.code (Bytes.unsafe_get _buf _curr),
                                            _buf, _len, (_curr + 1), _last
                                        in
                                        begin match next_char with
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          (* |'n' *)
                                          | 110 ->
                                            (* *)
                                            let _last = _curr in
                                            (* let _last_action = 104 in*)
                                            let next_char, _buf, _len, _curr, _last =
                                              if _curr >= _len then
                                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                              else
                                                Char.code (Bytes.unsafe_get _buf _curr),
                                                _buf, _len, (_curr + 1), _last
                                            in
                                            begin match next_char with
                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              (* |'O' *)
                                              | 79 ->
                                                (* *)
                                                let _last = _curr in
                                                (* let _last_action = 104 in*)
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
                                                    (* let _last_action = 104 in*)
                                                    let next_char, _buf, _len, _curr, _last =
                                                      if _curr >= _len then
                                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                      else
                                                        Char.code (Bytes.unsafe_get _buf _curr),
                                                        _buf, _len, (_curr + 1), _last
                                                    in
                                                    begin match next_char with
                                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                      (* |'d' *)
                                                      | 100 ->
                                                        (* *)
                                                        let _last = _curr in
                                                        (* let _last_action = 104 in*)
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
                                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                          (* |'e' *)
                                                          | 101 ->
                                                            (* *)
                                                            let _last = _curr in
                                                            (* let _last_action = 104 in*)
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
                                                                let _last_action = 27 in
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
                                                                    __ocaml_lex_state5 lexbuf 27 (* = last_action *) _buf _len _curr _last
                                                                  | _ ->
                                                                    let _curr = _last in
                                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                                    27 (* = last_action *)
                                                                end
                                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                              | _ ->
                                                                let _curr = _last in
                                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                                104 (* = last_action *)
                                                            end
                                                          | _ ->
                                                            let _curr = _last in
                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                            104 (* = last_action *)
                                                        end
                                                      | _ ->
                                                        let _curr = _last in
                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                        104 (* = last_action *)
                                                    end
                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    104 (* = last_action *)
                                                end
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'w'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|109|111|112|113|114|115|116|117|119|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          (* |'a' *)
          | 97 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'c' *)
              | 99 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'h' *)
                  | 104 ->
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
                        __ocaml_lex_state5 lexbuf 3 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        3 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'x' *)
          | 120 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                (* let _last_action = 104 in*)
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
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'n' *)
                      | 110 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            (* let _last_action = 104 in*)
                            let next_char, _buf, _len, _curr, _last =
                              if _curr >= _len then
                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                              else
                                Char.code (Bytes.unsafe_get _buf _curr),
                                _buf, _len, (_curr + 1), _last
                            in
                            begin match next_char with
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'s' *)
                              | 115 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'M' *)
                                  | 77 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
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
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'a' *)
                                      | 97 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
                                        let next_char, _buf, _len, _curr, _last =
                                          if _curr >= _len then
                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                          else
                                            Char.code (Bytes.unsafe_get _buf _curr),
                                            _buf, _len, (_curr + 1), _last
                                        in
                                        begin match next_char with
                                          (* |'p' *)
                                          | 112 ->
                                            (* *)
                                            let _last = _curr in
                                            (* let _last_action = 104 in*)
                                            let next_char, _buf, _len, _curr, _last =
                                              if _curr >= _len then
                                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                              else
                                                Char.code (Bytes.unsafe_get _buf _curr),
                                                _buf, _len, (_curr + 1), _last
                                            in
                                            begin match next_char with
                                              (* |'S' *)
                                              | 83 ->
                                                (* *)
                                                let _last = _curr in
                                                (* let _last_action = 104 in*)
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
                                                    (* let _last_action = 104 in*)
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
                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                      (* |'a' *)
                                                      | 97 ->
                                                        (* *)
                                                        let _last = _curr in
                                                        (* let _last_action = 104 in*)
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
                                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                          (* |'t' *)
                                                          | 116 ->
                                                            (* *)
                                                            let _last = _curr in
                                                            (* let _last_action = 104 in*)
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
                                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                              (* |'e' *)
                                                              | 101 ->
                                                                (* *)
                                                                let _last = _curr in
                                                                let _last_action = 80 in
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
                                                                    __ocaml_lex_state5 lexbuf 80 (* = last_action *) _buf _len _curr _last
                                                                  | _ ->
                                                                    let _curr = _last in
                                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                                    80 (* = last_action *)
                                                                end
                                                              | _ ->
                                                                let _curr = _last in
                                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                                104 (* = last_action *)
                                                            end
                                                          | _ ->
                                                            let _curr = _last in
                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                            104 (* = last_action *)
                                                        end
                                                      | _ ->
                                                        let _curr = _last in
                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                        104 (* = last_action *)
                                                    end
                                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    104 (* = last_action *)
                                                end
                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|113|114|115|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'c' *)
              | 99 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
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
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'p' *)
                      | 112 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
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
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'t' *)
                          | 116 ->
                            (* *)
                            let _last = _curr in
                            let _last_action = 103 in
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
                                __ocaml_lex_state5 lexbuf 103 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                103 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'d'|'e'|'f'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|100|101|102|103|104|106|107|108|109|110|111|112|113|114|115|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'i' *)
              | 105 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
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
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'t' *)
                      | 116 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'s' *)
                          | 115 ->
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
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 39 (* = last_action *) _buf _len _curr _last
                              (* |'*' *)
                              | 42 ->
                                (* *)
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                68
                              (* |'V' *)
                              | 86 ->
                                (* *)
                                let _last = _curr in
                                let _last_action = 104 in
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
                                    (* let _last_action = 104 in*)
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
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'r' *)
                                      | 114 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
                                        let next_char, _buf, _len, _curr, _last =
                                          if _curr >= _len then
                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                          else
                                            Char.code (Bytes.unsafe_get _buf _curr),
                                            _buf, _len, (_curr + 1), _last
                                        in
                                        begin match next_char with
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          (* |'s' *)
                                          | 115 ->
                                            (* *)
                                            let _last = _curr in
                                            let _last_action = 15 in
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
                                                __ocaml_lex_state5 lexbuf 15 (* = last_action *) _buf _len _curr _last
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                15 (* = last_action *)
                                            end
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                39 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'d' *)
      | 100 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'o' *)
          | 111 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'N' *)
              | 78 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'o' *)
                  | 111 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'t' *)
                      | 116 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'G' *)
                          | 71 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
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
                                (* let _last_action = 104 in*)
                                let next_char, _buf, _len, _curr, _last =
                                  if _curr >= _len then
                                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                  else
                                    Char.code (Bytes.unsafe_get _buf _curr),
                                    _buf, _len, (_curr + 1), _last
                                in
                                begin match next_char with
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  (* |'n' *)
                                  | 110 ->
                                    (* *)
                                    let _last = _curr in
                                    (* let _last_action = 104 in*)
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
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'e' *)
                                      | 101 ->
                                        (* *)
                                        let _last = _curr in
                                        (* let _last_action = 104 in*)
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
                                            (* let _last_action = 104 in*)
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
                                                (* let _last_action = 104 in*)
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
                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                  (* |'t' *)
                                                  | 116 ->
                                                    (* *)
                                                    let _last = _curr in
                                                    (* let _last_action = 104 in*)
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
                                                        (* let _last_action = 104 in*)
                                                        let next_char, _buf, _len, _curr, _last =
                                                          if _curr >= _len then
                                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                          else
                                                            Char.code (Bytes.unsafe_get _buf _curr),
                                                            _buf, _len, (_curr + 1), _last
                                                        in
                                                        begin match next_char with
                                                          (* |'T' *)
                                                          | 84 ->
                                                            (* *)
                                                            let _last = _curr in
                                                            (* let _last_action = 104 in*)
                                                            let next_char, _buf, _len, _curr, _last =
                                                              if _curr >= _len then
                                                                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                              else
                                                                Char.code (Bytes.unsafe_get _buf _curr),
                                                                _buf, _len, (_curr + 1), _last
                                                            in
                                                            begin match next_char with
                                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                              (* |'h' *)
                                                              | 104 ->
                                                                (* *)
                                                                let _last = _curr in
                                                                (* let _last_action = 104 in*)
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
                                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                  (* |'i' *)
                                                                  | 105 ->
                                                                    (* *)
                                                                    let _last = _curr in
                                                                    (* let _last_action = 104 in*)
                                                                    let next_char, _buf, _len, _curr, _last =
                                                                      if _curr >= _len then
                                                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                                      else
                                                                        Char.code (Bytes.unsafe_get _buf _curr),
                                                                        _buf, _len, (_curr + 1), _last
                                                                    in
                                                                    begin match next_char with
                                                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                      (* |'s' *)
                                                                      | 115 ->
                                                                        (* *)
                                                                        let _last = _curr in
                                                                        (* let _last_action = 104 in*)
                                                                        let next_char, _buf, _len, _curr, _last =
                                                                          if _curr >= _len then
                                                                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                                          else
                                                                            Char.code (Bytes.unsafe_get _buf _curr),
                                                                            _buf, _len, (_curr + 1), _last
                                                                        in
                                                                        begin match next_char with
                                                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                          (* |'P' *)
                                                                          | 80 ->
                                                                            (* *)
                                                                            let _last = _curr in
                                                                            (* let _last_action = 104 in*)
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
                                                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                              (* |'r' *)
                                                                              | 114 ->
                                                                                (* *)
                                                                                let _last = _curr in
                                                                                (* let _last_action = 104 in*)
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
                                                                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                                  (* |'o' *)
                                                                                  | 111 ->
                                                                                    (* *)
                                                                                    let _last = _curr in
                                                                                    (* let _last_action = 104 in*)
                                                                                    let next_char, _buf, _len, _curr, _last =
                                                                                      if _curr >= _len then
                                                                                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                                                                                      else
                                                                                        Char.code (Bytes.unsafe_get _buf _curr),
                                                                                        _buf, _len, (_curr + 1), _last
                                                                                    in
                                                                                    begin match next_char with
                                                                                      (* |'o' *)
                                                                                      | 111 ->
                                                                                        (* *)
                                                                                        let _last = _curr in
                                                                                        (* let _last_action = 104 in*)
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
                                                                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                                          (* |'f' *)
                                                                                          | 102 ->
                                                                                            (* *)
                                                                                            let _last = _curr in
                                                                                            let _last_action = 65 in
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
                                                                                                __ocaml_lex_state5 lexbuf 65 (* = last_action *) _buf _len _curr _last
                                                                                              | _ ->
                                                                                                let _curr = _last in
                                                                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                                                                65 (* = last_action *)
                                                                                            end
                                                                                          | _ ->
                                                                                            let _curr = _last in
                                                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                                                            104 (* = last_action *)
                                                                                        end
                                                                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
                                                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                                                      | _ ->
                                                                                        let _curr = _last in
                                                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                                                        104 (* = last_action *)
                                                                                    end
                                                                                  | _ ->
                                                                                    let _curr = _last in
                                                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                                                    104 (* = last_action *)
                                                                                end
                                                                              | _ ->
                                                                                let _curr = _last in
                                                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                                                104 (* = last_action *)
                                                                            end
                                                                          | _ ->
                                                                            let _curr = _last in
                                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                                            104 (* = last_action *)
                                                                        end
                                                                      | _ ->
                                                                        let _curr = _last in
                                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                                        104 (* = last_action *)
                                                                    end
                                                                  | _ ->
                                                                    let _curr = _last in
                                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                                    104 (* = last_action *)
                                                                end
                                                              | _ ->
                                                                let _curr = _last in
                                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                                104 (* = last_action *)
                                                            end
                                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                          | _ ->
                                                            let _curr = _last in
                                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                                            lexbuf.Lexing.lex_last_pos <- _last;
                                                            104 (* = last_action *)
                                                        end
                                                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                                      | _ ->
                                                        let _curr = _last in
                                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                                        lexbuf.Lexing.lex_last_pos <- _last;
                                                        104 (* = last_action *)
                                                    end
                                                  | _ ->
                                                    let _curr = _last in
                                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                                    lexbuf.Lexing.lex_last_pos <- _last;
                                                    104 (* = last_action *)
                                                end
                                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                              | _ ->
                                                let _curr = _last in
                                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                                lexbuf.Lexing.lex_last_pos <- _last;
                                                104 (* = last_action *)
                                            end
                                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|115|116|117|118|119|120|121|122 ->
                                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            104 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|112|113|114|115|116|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'s' *)
      | 115 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
        let next_char, _buf, _len, _curr, _last =
          if _curr >= _len then
            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
          else
            Char.code (Bytes.unsafe_get _buf _curr),
            _buf, _len, (_curr + 1), _last
        in
        begin match next_char with
          (* |'p' *)
          | 112 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
            let next_char, _buf, _len, _curr, _last =
              if _curr >= _len then
                __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
              else
                Char.code (Bytes.unsafe_get _buf _curr),
                _buf, _len, (_curr + 1), _last
            in
            begin match next_char with
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'l' *)
              | 108 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
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
                    (* let _last_action = 104 in*)
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
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'t' *)
                      | 116 ->
                        (* *)
                        let _last = _curr in
                        let _last_action = 72 in
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
                            __ocaml_lex_state5 lexbuf 72 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            72 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'l'|'m'|'n'|'o'|'q'|'r'|'s'|'u'|'v'|'w'|'x'|'y'|'z' *)
          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|108|109|110|111|113|114|115|117|118|119|120|121|122 ->
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          (* |'t' *)
          | 116 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                (* let _last_action = 104 in*)
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
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'t' *)
                  | 116 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
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
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'_' *)
                          | 95 ->
                            (* *)
                            let _last = _curr in
                            (* let _last_action = 104 in*)
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
                                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                              (* |'e' *)
                              | 101 ->
                                (* *)
                                let _last = _curr in
                                (* let _last_action = 104 in*)
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
                                    (* let _last_action = 104 in*)
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
                                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                      (* |'v' *)
                                      | 118 ->
                                        (* *)
                                        let _last = _curr in
                                        let _last_action = 84 in
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
                                            __ocaml_lex_state5 lexbuf 84 (* = last_action *) _buf _len _curr _last
                                          | _ ->
                                            let _curr = _last in
                                            lexbuf.Lexing.lex_curr_pos <- _curr;
                                            lexbuf.Lexing.lex_last_pos <- _last;
                                            84 (* = last_action *)
                                        end
                                      | _ ->
                                        let _curr = _last in
                                        lexbuf.Lexing.lex_curr_pos <- _curr;
                                        lexbuf.Lexing.lex_last_pos <- _last;
                                        104 (* = last_action *)
                                    end
                                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|111|112|113|114|115|116|117|118|119|120|121|122 ->
                                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                                  | _ ->
                                    let _curr = _last in
                                    lexbuf.Lexing.lex_curr_pos <- _curr;
                                    lexbuf.Lexing.lex_last_pos <- _last;
                                    104 (* = last_action *)
                                end
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                104 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          (* |'s' *)
                          | 115 ->
                            (* *)
                            let _last = _curr in
                            let _last_action = 82 in
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
                                __ocaml_lex_state5 lexbuf 82 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                82 (* = last_action *)
                            end
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'k' *)
          | 107 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                (* let _last_action = 104 in*)
                let next_char, _buf, _len, _curr, _last =
                  if _curr >= _len then
                    __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                  else
                    Char.code (Bytes.unsafe_get _buf _curr),
                    _buf, _len, (_curr + 1), _last
                in
                begin match next_char with
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'p' *)
                  | 112 ->
                    (* *)
                    let _last = _curr in
                    let _last_action = 63 in
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
                        __ocaml_lex_state5 lexbuf 63 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        63 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          (* |'e' *)
          | 101 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              (* |'a' *)
              | 97 ->
                (* *)
                let _last = _curr in
                (* let _last_action = 104 in*)
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
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  (* |'r' *)
                  | 114 ->
                    (* *)
                    let _last = _curr in
                    (* let _last_action = 104 in*)
                    let next_char, _buf, _len, _curr, _last =
                      if _curr >= _len then
                        __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                      else
                        Char.code (Bytes.unsafe_get _buf _curr),
                        _buf, _len, (_curr + 1), _last
                    in
                    begin match next_char with
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      (* |'c' *)
                      | 99 ->
                        (* *)
                        let _last = _curr in
                        (* let _last_action = 104 in*)
                        let next_char, _buf, _len, _curr, _last =
                          if _curr >= _len then
                            __ocaml_lex_refill_buf lexbuf _buf _len _curr _last
                          else
                            Char.code (Bytes.unsafe_get _buf _curr),
                            _buf, _len, (_curr + 1), _last
                        in
                        begin match next_char with
                          (* |'h' *)
                          | 104 ->
                            (* *)
                            let _last = _curr in
                            let _last_action = 32 in
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
                                __ocaml_lex_state5 lexbuf 32 (* = last_action *) _buf _len _curr _last
                              | _ ->
                                let _curr = _last in
                                lexbuf.Lexing.lex_curr_pos <- _curr;
                                lexbuf.Lexing.lex_last_pos <- _last;
                                32 (* = last_action *)
                            end
                          (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                          |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            104 (* = last_action *)
                        end
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'p' *)
      | 112 ->
        (* *)
        let _last = _curr in
        let _last_action = 104 in
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
            __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
          (* |'r' *)
          | 114 ->
            (* *)
            let _last = _curr in
            (* let _last_action = 104 in*)
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
                (* let _last_action = 104 in*)
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
                    (* let _last_action = 104 in*)
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
                        let _last_action = 89 in
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
                            __ocaml_lex_state5 lexbuf 89 (* = last_action *) _buf _len _curr _last
                          | _ ->
                            let _curr = _last in
                            lexbuf.Lexing.lex_curr_pos <- _curr;
                            lexbuf.Lexing.lex_last_pos <- _last;
                            89 (* = last_action *)
                        end
                      (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                      |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                        __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                      | _ ->
                        let _curr = _last in
                        lexbuf.Lexing.lex_curr_pos <- _curr;
                        lexbuf.Lexing.lex_last_pos <- _last;
                        104 (* = last_action *)
                    end
                  (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
                  |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|105|106|107|108|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                    __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
                  | _ ->
                    let _curr = _last in
                    lexbuf.Lexing.lex_curr_pos <- _curr;
                    lexbuf.Lexing.lex_last_pos <- _last;
                    104 (* = last_action *)
                end
              (* |'\''|'-'|'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|'_'|'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z' *)
              |39|45|48|49|50|51|52|53|54|55|56|57|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|95|97|98|99|100|101|102|103|104|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122 ->
                __ocaml_lex_state5 lexbuf 104 (* = last_action *) _buf _len _curr _last
              | _ ->
                let _curr = _last in
                lexbuf.Lexing.lex_curr_pos <- _curr;
                lexbuf.Lexing.lex_last_pos <- _last;
                104 (* = last_action *)
            end
          | _ ->
            let _curr = _last in
            lexbuf.Lexing.lex_curr_pos <- _curr;
            lexbuf.Lexing.lex_last_pos <- _last;
            104 (* = last_action *)
        end
      (* |'0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9' *)
      |48|49|50|51|52|53|54|55|56|57 ->
        __ocaml_lex_state3 lexbuf _last_action _buf _len _curr _last
      | _ ->
        (* *)
        lexbuf.Lexing.lex_curr_pos <- _curr;
        lexbuf.Lexing.lex_last_pos <- _last;
        108
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
# 21 "lexer.mll"
                ( token lexbuf )
# 10703 "lexer.ml"

  | 1 ->
# 22 "lexer.mll"
                 ( next_line lexbuf; token lexbuf )
# 10708 "lexer.ml"

  | 2 ->
# 23 "lexer.mll"
                        ( FOR )
# 10713 "lexer.ml"

  | 3 ->
# 24 "lexer.mll"
                         ( EACH )
# 10718 "lexer.ml"

  | 4 ->
# 25 "lexer.mll"
                   ( IN )
# 10723 "lexer.ml"

  | 5 ->
# 26 "lexer.mll"
                      ( COMMA )
# 10728 "lexer.ml"

  | 6 ->
# 27 "lexer.mll"
                            ( THEOREM )
# 10733 "lexer.ml"

  | 7 ->
# 28 "lexer.mll"
                   ( UNDERSCORE )
# 10738 "lexer.ml"

  | 8 ->
# 29 "lexer.mll"
                    ( LPAREN )
# 10743 "lexer.ml"

  | 9 ->
# 30 "lexer.mll"
                    ( RPAREN )
# 10748 "lexer.ml"

  | 10 ->
# 31 "lexer.mll"
                      ( COLON )
# 10753 "lexer.ml"

  | 11 ->
# 32 "lexer.mll"
                           ( FORALL )
# 10758 "lexer.ml"

  | 12 ->
# 33 "lexer.mll"
                      ( DOT )
# 10763 "lexer.ml"

  | 13 ->
# 34 "lexer.mll"
                               ( FORALLVARS )
# 10768 "lexer.ml"

  | 14 ->
# 35 "lexer.mll"
                    ( IMPLY )
# 10773 "lexer.ml"

  | 15 ->
# 36 "lexer.mll"
                               ( EXISTSVARS )
# 10778 "lexer.ml"

  | 16 ->
# 37 "lexer.mll"
                    ( EQUAL )
# 10783 "lexer.ml"

  | 17 ->
# 38 "lexer.mll"
                     ( AND )
# 10788 "lexer.ml"

  | 18 ->
# 39 "lexer.mll"
                        ( ANDMACRO )
# 10793 "lexer.ml"

  | 19 ->
# 40 "lexer.mll"
                         ( VALUESOF )
# 10798 "lexer.ml"

  | 20 ->
# 41 "lexer.mll"
                          ( VALUEARGS )
# 10803 "lexer.ml"

  | 21 ->
# 42 "lexer.mll"
                       ( OFTYPE )
# 10808 "lexer.ml"

  | 22 ->
# 43 "lexer.mll"
                              ( ISSINGLEVALUE )
# 10813 "lexer.ml"

  | 23 ->
# 44 "lexer.mll"
                                 ( TARGETV )
# 10818 "lexer.ml"

  | 24 ->
# 45 "lexer.mll"
                              ( TARGETOP )
# 10823 "lexer.ml"

  | 25 ->
# 46 "lexer.mll"
                                     ( CONTAINSSUB )
# 10828 "lexer.ml"

  | 26 ->
# 47 "lexer.mll"
                          ( IMPLYMACRO )
# 10833 "lexer.ml"

  | 27 ->
# 48 "lexer.mll"
                                ( EVALORDER )
# 10838 "lexer.ml"

  | 28 ->
# 49 "lexer.mll"
                               ( CONTEXTARGS )
# 10843 "lexer.ml"

  | 29 ->
# 50 "lexer.mll"
                        ( GETARGS )
# 10848 "lexer.ml"

  | 30 ->
# 51 "lexer.mll"
                      ( PROOF )
# 10853 "lexer.ml"

  | 31 ->
# 52 "lexer.mll"
                         ( INTROS )
# 10858 "lexer.ml"

  | 32 ->
# 53 "lexer.mll"
                        ( SEARCH )
# 10863 "lexer.ml"

  | 33 ->
# 54 "lexer.mll"
                      ( CASE )
# 10868 "lexer.ml"

  | 34 ->
# 55 "lexer.mll"
                       ( CASESTAR )
# 10873 "lexer.ml"

  | 35 ->
# 56 "lexer.mll"
                    ( IF )
# 10878 "lexer.ml"

  | 36 ->
# 57 "lexer.mll"
                      ( THEN )
# 10883 "lexer.ml"

  | 37 ->
# 58 "lexer.mll"
                      ( ELSE )
# 10888 "lexer.ml"

  | 38 ->
# 59 "lexer.mll"
                      ( NOP )
# 10893 "lexer.ml"

  | 39 ->
# 60 "lexer.mll"
                           ( EXISTS )
# 10898 "lexer.ml"

  | 40 ->
# 61 "lexer.mll"
                           ( INDUCTION )
# 10903 "lexer.ml"

  | 41 ->
# 62 "lexer.mll"
                            ( INDUCTIONSTAR )
# 10908 "lexer.ml"

  | 42 ->
# 63 "lexer.mll"
                     ( ON )
# 10913 "lexer.ml"

  | 43 ->
# 64 "lexer.mll"
                           ( ENDFOR )
# 10918 "lexer.ml"

  | 44 ->
# 65 "lexer.mll"
                        ( APPLY )
# 10923 "lexer.ml"

  | 45 ->
# 66 "lexer.mll"
                     ( TO )
# 10928 "lexer.ml"

  | 46 ->
# 67 "lexer.mll"
                            ( BACKCHAIN )
# 10933 "lexer.ml"

  | 47 ->
# 68 "lexer.mll"
                                  ( ISELIM )
# 10938 "lexer.ml"

  | 48 ->
# 69 "lexer.mll"
                          ( ISDERIVED )
# 10943 "lexer.ml"

  | 49 ->
# 70 "lexer.mll"
                               ( ISERRORHANDLER )
# 10948 "lexer.ml"

  | 50 ->
# 71 "lexer.mll"
                           ( GETARGTYPE )
# 10953 "lexer.ml"

  | 51 ->
# 72 "lexer.mll"
                     ( OR )
# 10958 "lexer.ml"

  | 52 ->
# 73 "lexer.mll"
                       ( ORMACRO )
# 10963 "lexer.ml"

  | 53 ->
# 74 "lexer.mll"
                           ( EXISTS )
# 10968 "lexer.ml"

  | 54 ->
# 75 "lexer.mll"
                          ( ISVAR )
# 10973 "lexer.ml"

  | 55 ->
# 76 "lexer.mll"
                       ( IS )
# 10978 "lexer.ml"

  | 56 ->
# 77 "lexer.mll"
                       ( ORTERM )
# 10983 "lexer.ml"

  | 57 ->
# 78 "lexer.mll"
                        ( ANDTERM )
# 10988 "lexer.ml"

  | 58 ->
# 79 "lexer.mll"
                        ( NOTTERM )
# 10993 "lexer.ml"

  | 59 ->
# 80 "lexer.mll"
                          ( ENDOR )
# 10998 "lexer.ml"

  | 60 ->
# 81 "lexer.mll"
                           ( ENDAND )
# 11003 "lexer.ml"

  | 61 ->
# 82 "lexer.mll"
                             ( ENDIMPLY )
# 11008 "lexer.ml"

  | 62 ->
# 83 "lexer.mll"
                          ( ENDIF )
# 11013 "lexer.ml"

  | 63 ->
# 84 "lexer.mll"
                         ( SKIP )
# 11018 "lexer.ml"

  | 64 ->
# 85 "lexer.mll"
                         ( UNDO )
# 11023 "lexer.ml"

  | 65 ->
# 86 "lexer.mll"
                             (DONOTGENERATE)
# 11028 "lexer.ml"

  | 66 ->
# 87 "lexer.mll"
                         ( TRUE )
# 11033 "lexer.ml"

  | 67 ->
# 89 "lexer.mll"
                            ( FORALLSTAR )
# 11038 "lexer.ml"

  | 68 ->
# 90 "lexer.mll"
                            ( EXISTSSTAR )
# 11043 "lexer.ml"

  | 69 ->
# 92 "lexer.mll"
                                ( OPERATION )
# 11048 "lexer.ml"

  | 70 ->
# 93 "lexer.mll"
                            ( WITNESS )
# 11053 "lexer.ml"

  | 71 ->
# 94 "lexer.mll"
                               ( ENDWITNESS )
# 11058 "lexer.ml"

  | 72 ->
# 95 "lexer.mll"
                          ( SPLIT )
# 11063 "lexer.ml"

  | 73 ->
# 96 "lexer.mll"
                      ( LEFTSQUARE )
# 11068 "lexer.ml"

  | 74 ->
# 97 "lexer.mll"
                      ( RIGHTSQUARE )
# 11073 "lexer.ml"

  | 75 ->
# 98 "lexer.mll"
                                ( CONSTRUCTED )
# 11078 "lexer.ml"

  | 76 ->
# 99 "lexer.mll"
                                ( WHICHARG )
# 11083 "lexer.ml"

  | 77 ->
# 100 "lexer.mll"
                                    ( WHICHARGTEST )
# 11088 "lexer.ml"

  | 78 ->
# 101 "lexer.mll"
                          ( RANGE )
# 11093 "lexer.ml"

  | 79 ->
# 102 "lexer.mll"
                          ( ARITY )
# 11098 "lexer.ml"

  | 80 ->
# 103 "lexer.mll"
                                    ( EXTENDSTATE )
# 11103 "lexer.ml"

  | 81 ->
# 104 "lexer.mll"
                         ( WITH )
# 11108 "lexer.ml"

  | 82 ->
# 105 "lexer.mll"
                           ( STATES )
# 11113 "lexer.ml"

  | 83 ->
# 106 "lexer.mll"
                               ( WEAKSTATES )
# 11118 "lexer.ml"

  | 84 ->
# 107 "lexer.mll"
                              ( STATEENV )
# 11123 "lexer.ml"

  | 85 ->
# 108 "lexer.mll"
                            ( MAPENV )
# 11128 "lexer.ml"

  | 86 ->
# 109 "lexer.mll"
                            ( LABELOF )
# 11133 "lexer.ml"

  | 87 ->
# 110 "lexer.mll"
                          ( REFOF )
# 11138 "lexer.ml"

  | 88 ->
# 111 "lexer.mll"
                          ( ALLENVS )
# 11143 "lexer.ml"

  | 89 ->
# 112 "lexer.mll"
                          ( PRIME )
# 11148 "lexer.ml"

  | 90 ->
# 113 "lexer.mll"
                                ( NEWENTRY )
# 11153 "lexer.ml"

  | 91 ->
# 114 "lexer.mll"
                        ( CAN )
# 11158 "lexer.ml"

  | 92 ->
# 115 "lexer.mll"
                            ( FINDVAR )
# 11163 "lexer.ml"

  | 93 ->
# 116 "lexer.mll"
                                ( FINDVARTEST )
# 11168 "lexer.ml"

  | 94 ->
# 117 "lexer.mll"
                           ( ASSERT )
# 11173 "lexer.ml"

  | 95 ->
# 118 "lexer.mll"
                          ( CLEAR )
# 11178 "lexer.ml"

  | 96 ->
# 119 "lexer.mll"
                           ( UNFOLD )
# 11183 "lexer.ml"

  | 97 ->
# 120 "lexer.mll"
                        ( LET )
# 11188 "lexer.ml"

  | 98 ->
# 121 "lexer.mll"
                             ( MAKECONS )
# 11193 "lexer.ml"

  | 99 ->
# 122 "lexer.mll"
                        ( INDUCTIVEARGS )
# 11198 "lexer.ml"

  | 100 ->
# 123 "lexer.mll"
                  ( ISLABEL )
# 11203 "lexer.ml"

  | 101 ->
# 124 "lexer.mll"
                     ( IRRELEVANT )
# 11208 "lexer.ml"

  | 102 ->
# 125 "lexer.mll"
               ( ONLY )
# 11213 "lexer.ml"

  | 103 ->
# 126 "lexer.mll"
                 ( EXCEPT )
# 11218 "lexer.ml"

  | 104 ->
# 127 "lexer.mll"
                    ( VAR (Lexing.lexeme lexbuf) )
# 11223 "lexer.ml"

  | 105 ->
# 128 "lexer.mll"
                     ( NAME (Lexing.lexeme lexbuf) )
# 11228 "lexer.ml"

  | 106 ->
let
# 129 "lexer.mll"
                  i
# 11234 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 129 "lexer.mll"
                    ( INT (int_of_string i) )
# 11238 "lexer.ml"

  | 107 ->
# 130 "lexer.mll"
                    ( EOF )
# 11243 "lexer.ml"

  | 108 ->
# 132 "lexer.mll"
     ( raise (Error (Printf.sprintf "At offset %d: unexpected character %s.\n" (Lexing.lexeme_start lexbuf) (Lexing.lexeme lexbuf))) )
# 11248 "lexer.ml"

  | _ -> raise (Failure "lexing: empty token")


;;

# 133 "lexer.mll"
 

# 11258 "lexer.ml"
