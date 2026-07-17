module imp_memcpyn.

%% map H
lookupEnvH (consEnvH L T EnvH) L T.
lookupEnvH (consEnvH L1 T1 EnvH) L T :- lookupEnvH EnvH L T.

subsetEnvH EnvH EnvH.
subsetEnvH EnvH (consEnvH L T Rest) :- subsetEnvH EnvH Rest.

lookupMapH (consMapH L E MU) L E.
lookupMapH (consMapH L1 E1 MU) L E :- lookupMapH MU L E.

updateMapH (consMapH L E MU) L E' (consMapH L E' MU).
updateMapH (consMapH L1 E1 MU) L E' (consMapH L1 E1 MU') :- updateMapH MU L E' MU'.

%% addMapH nilMapH  E (consMapH zeroLabelH E nilMapH) zeroLabelH.
addMapH (consMapH L E1 MU) E2 (consMapH (succLabelH L) E2 (consMapH L E1 MU)) (succLabelH L). 



typeOf Gamma EnvH (zero) (int).
typeOf Gamma EnvH (succ E) (int) :- typeOf Gamma EnvH E (int). 
typeOf Gamma EnvH (tt) (bool).
typeOf Gamma EnvH (ff) (bool).
typeOf Gamma EnvH (plus E1 E2) int :-typeOf Gamma EnvH E1 int, typeOf Gamma EnvH E2 int.
typeOf Gamma EnvH (equal E1 E2) bool :-typeOf Gamma EnvH E1 int, typeOf Gamma EnvH E2 int.
typeOf Gamma EnvH (deref E1) T :- typeOf Gamma EnvH E1 (refH T).
typeOf Gamma EnvH (assign E1 E2) (unitT) :-
    typeOf Gamma EnvH E1 (refH T),
    typeOf Gamma EnvH E2 T.
typeOf Gamma EnvH (if E1 E2 E3) (unitT) :- typeOf Gamma EnvH E1 bool, typeOf Gamma EnvH E2 unitT, typeOf Gamma EnvH E3 unitT.
typeOf Gamma EnvH (while E1 E2) (unitT) :- typeOf Gamma EnvH E1 bool, typeOf Gamma EnvH E2 unitT.
typeOf Gamma EnvH (seq E1 E2) (unitT) :- typeOf Gamma EnvH E1 unitT, typeOf Gamma EnvH E2 unitT.

typeOf Gamma EnvH (emptyList) (list T).
typeOf Gamma EnvH (cons E1 E2) (list T) :- typeOf Gamma EnvH E1 T, typeOf Gamma EnvH E2 (list T).

typeOf Gamma EnvH (memcpyn E1 E2 E3) (unitT) :-
    typeOf Gamma EnvH E1 (list (refH T)),
    typeOf Gamma EnvH E2 (list (refH T)),
    typeOf Gamma EnvH E3 (int).

typeOf Gamma EnvH (labelH L) (refH T) :- lookupEnvH EnvH L T.
typeOf Gamma EnvH (unit) (unitT).
typeOf Gamma EnvH (error) T.

step (plus V1 V2) H V3 H  :- addition V1 V2 V3, value V1, value V2, value V3. 
step (equal V1 V2) H V3 H  :- equality V1 V2 V3, value V1, value V2, value V3. 
 
step (deref (labelH GET)) MU1  V MU1  :- lookupMapH MU1 GET V, value V. 
step (assign (labelH GET) V) MU1  unit MU1'  :- updateMapH MU1 GET V MU1', value V.

step (if tt E1 E2) H E1 H. 
step (if ff E1 E2) H E2 H. 
step (while E1 E2) H (if E1 (seq E2 (while E1 E2)) unit) H. 
step (seq (unit) E2) H unit H. 

step (memcpyn V1 V2 (zero)) MU1  unit MU1.
step (memcpyn (emptyList) V2 (succ V)) MU1 error MU1. 
step (memcpyn (cons (labelH GET1) V1) (emptyList) (succ V)) MU1 error MU1. 
step (memcpyn (cons (labelH GET1) V1) (cons (labelH GET2) V2) (succ V)) MU1 (memcpyn V1 V2 V) MU1' :-  lookupMapH MU1 GET1 V3, updateMapH MU1 GET2 V3 MU1', value V.

value (zero).
value (succ E) :- value E. 
value (tt).
value (ff).
value (unit).
value (labelH L).

step (plus E1 E2) MU1  (plus E1' E2) MU1' :- step E1 MU1  E1' MU1'.
step (plus E1 E2) MU1  (plus E1 E2') MU1' :- step E2 MU1  E2' MU1', value E1.
step (equal E1 E2) MU1  (equal E1' E2) MU1' :- step E1 MU1  E1' MU1'.
step (equal E1 E2) MU1  (equal E1 E2') MU1' :- step E2 MU1  E2' MU1', value E1.
step (deref E) MU1  (deref E') MU1' :- step E MU1  E' MU1'.
step (assign E1 E2) MU1  (assign E1' E2) MU1' :- step E1 MU1  E1' MU1'.
step (assign E1 E2) MU1  (assign E1 E2') MU1' :- step E2 MU1  E2' MU1', value E1.
step (if E1 E2 E3) MU1  (if E1' E2 E3) MU1' :- step E1 MU1  E1' MU1'.
step (seq E1 E2) MU1  (seq E1' E2) MU1' :- step E1 MU1  E1' MU1'.

addition zero E E.
addition (succ E1) E2 (succ E3) :- addition E1 E2 E3. 

equality V V tt.

inequality zero (succ E) tt.
inequality (succ E) zero tt.
inequality (succ E1) (succ E2) V :- inequality E1 E2 V.



