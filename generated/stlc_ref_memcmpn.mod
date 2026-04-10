module stlc_ref_memcmpn.

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


typeOf Gamma EnvH (tt) (bool).
typeOf Gamma EnvH (ff) (bool).

typeOf Gamma EnvH (abs T1 R) (arrow T1 T2) :-
    (pi x\ typeOf (consEnvT x T1 Gamma) EnvH (R x) T2).
typeOf Gamma EnvH (app E1 E2) T2 :-
    typeOf Gamma EnvH E1 (arrow T1 T2),
    typeOf Gamma EnvH E2 T1.
	
typeOf Gamma EnvH (zero) (int).
typeOf Gamma EnvH (succ E1) (int) :- typeOf Gamma EnvH E1 (int).

typeOf Gamma EnvH (emptyList) (list T).
typeOf Gamma EnvH (cons E1 E2) (list T) :- typeOf Gamma EnvH E1 T, typeOf Gamma EnvH E2 (list T).


typeOf Gamma EnvH (ref E1) (refH T) :- typeOf Gamma EnvH E1 T.
typeOf Gamma EnvH (deref E1) T :- typeOf Gamma EnvH E1 (refH T).
typeOf Gamma EnvH (assign E1 E2) (unitT) :-
    typeOf Gamma EnvH E1 (refH T),
    typeOf Gamma EnvH E2 T.

typeOf Gamma EnvH (memcmpn E1 E2 E3) (bool) :-
    typeOf Gamma EnvH E1 (list (refH int)),
    typeOf Gamma EnvH E2 (list (refH int)),
    typeOf Gamma EnvH E3 (int).


typeOf Gamma EnvH (labelH L) (refH T) :- lookupEnvH EnvH L T.
typeOf Gamma EnvH (unit) (unitT).
typeOf Gamma EnvH (error) T.


step (app (abs T R) V) MU1  (R V) MU1  :- value V.
step (ref V) MU1  (labelH LNewH) MU1'  :- addMapH MU1 V MU1' LNewH, value V. 
step (deref (labelH GET)) MU1  V MU1  :- lookupMapH MU1 GET V, value V. 
step (assign (labelH GET) V) MU1  unit MU1'  :- updateMapH MU1 GET V MU1', value V.

step (memcmpn V1 V2 (zero)) MU1  tt MU1.
step (memcmpn (emptyList) V2 (succ V)) MU1 error MU1. 
step (memcmpn (cons (labelH GET1) V1) (emptyList) (succ V)) MU1 error MU1. 
step (memcmpn (cons (labelH GET1) V1) (cons (labelH GET2) V2) (succ V)) MU1 (memcmpn V1 V2 V) MU1 :-  lookupMapH MU1 GET1 V11, lookupMapH MU1 GET2 V22, equality V11 V22 V3, value V11, value V22, value V3.
step (memcmpn (cons (labelH GET1) V1) (cons (labelH GET2) V2) (succ V)) MU1 ff MU1 :-  lookupMapH MU1 GET1 V11, lookupMapH MU1 GET2 V22, inequality V11 V22 V3. 


value (abs E1 E2).
value (unit).
value (labelH L).

step (app E1 E2) MU1  (app E1' E2) MU1' :- step E1 MU1  E1' MU1'.
step (app E1 E2) MU1  (app E1 E2') MU1' :- step E2 MU1  E2' MU1', value E1.
step (ref E1) MU1  (ref E1') MU1' :- step E1 MU1  E1' MU1'.
step (deref E) MU1  (deref E') MU1' :- step E MU1  E' MU1'.
step (assign E1 E2) MU1  (assign E1' E2) MU1' :- step E1 MU1  E1' MU1'.
step (assign E1 E2) MU1  (assign E1 E2') MU1' :- step E2 MU1  E2' MU1', value E1.

equality V V tt.

inequality zero (succ V) tt.
inequality (succ V) zero tt.
