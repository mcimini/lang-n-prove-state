module imp_for.

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



typeOf Gamma EnvH (num N) (int).
typeOf Gamma EnvH (tt) (bool).
typeOf Gamma EnvH (ff) (bool).
typeOf Gamma EnvH (nilL) (list T).
typeOf Gamma EnvH (consL E1 E2) (list T) :-typeOf Gamma EnvH E1 T, typeOf Gamma EnvH E2 (list T).
typeOf Gamma EnvH (plus E1 E2) int :-typeOf Gamma EnvH E1 int, typeOf Gamma EnvH E2 int.
typeOf Gamma EnvH (equal E1 E2) bool :-typeOf Gamma EnvH E1 int, typeOf Gamma EnvH E2 int.
typeOf Gamma EnvH (deref E1) T :- typeOf Gamma EnvH E1 (refH T).
typeOf Gamma EnvH (assign E1 E2) (unitT) :-
    typeOf Gamma EnvH E1 (refH T),
    typeOf Gamma EnvH E2 T.
typeOf Gamma EnvH (if E1 E2 E3) (unitT) :- typeOf Gamma EnvH E1 bool, typeOf Gamma EnvH E2 unitT, typeOf Gamma EnvH E3 unitT.

typeOf Gamma EnvH (for E1 E2 E3 E4) (unitT) :- typeOf Gamma EnvH E1 (unitT), typeOf Gamma EnvH E2 (bool), typeOf Gamma EnvH E3 (unitT), typeOf Gamma EnvH E4 (unitT), typeOf (nilEnvT) EnvH (unit) (unitT).


typeOf Gamma EnvH (seq E1 E2) (unitT) :- typeOf Gamma EnvH E1 unitT, typeOf Gamma EnvH E2 unitT.

typeOf Gamma EnvH (labelH L) (refH T) :- lookupEnvH EnvH L T.
typeOf Gamma EnvH (unit) (unitT).


step (plus V1 V2) H V3 H  :- addition V1 V2 V3, value V1, value V2, value V3. 
step (equal V1 V2) H V3 H  :- equality V1 V2 V3, value V1, value V2, value V3. 
 
step (deref (labelH GET)) MU1  V MU1  :- lookupMapH MU1 GET V, value V. 
step (assign (labelH GET) V) MU1  unit MU1'  :- updateMapH MU1 GET V MU1', value V.

step (if tt E1 E2) H E1 H. 
step (if ff E1 E2) H E2 H. 

step (for E1 E2 E3 E4) H (seq E1 (if E2 (seq E4 (seq E3 ((for (unit) E2 E3 E4)))) (unit))) H.

step (seq (unit) E2) H unit H. 


value (num N).
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

step (for E1 E2 E3 E4) MU1  (for E1' E2 E3 E4) MU1' :- step E1 MU1  E1' MU1'.

addition (num i0) (num i0) (num i0).
addition (num i0) (num i1) (num i1).
addition (num i0) (num i2) (num i2).
addition (num i0) (num i3) (num i3).
addition (num i0) (num i4) (num i4).
addition (num i0) (num i5) (num i5).
addition (num i0) (num i6) (num i6).
addition (num i1) (num i0) (num i1).
addition (num i1) (num i1) (num i2).
addition (num i1) (num i2) (num i3).
addition (num i1) (num i3) (num i4).
addition (num i1) (num i4) (num i5).
addition (num i1) (num i5) (num i6).
addition (num i1) (num i6) (num i6).
addition (num i2) (num i0) (num i2).
addition (num i2) (num i1) (num i3).
addition (num i2) (num i2) (num i4).
addition (num i2) (num i3) (num i5).
addition (num i2) (num i4) (num i6).
addition (num i2) (num i5) (num i6).
addition (num i2) (num i6) (num i6).
addition (num i3) (num i0) (num i3).
addition (num i3) (num i1) (num i4).
addition (num i3) (num i2) (num i5).
addition (num i3) (num i3) (num i6).
addition (num i3) (num i4) (num i6).
addition (num i3) (num i5) (num i6).
addition (num i3) (num i6) (num i6).
addition (num i4) (num i0) (num i4).
addition (num i4) (num i1) (num i5).
addition (num i4) (num i2) (num i6).
addition (num i4) (num i3) (num i6).
addition (num i4) (num i4) (num i6).
addition (num i4) (num i5) (num i6).
addition (num i4) (num i6) (num i6).
addition (num i5) (num i0) (num i5).
addition (num i5) (num i1) (num i6).
addition (num i5) (num i2) (num i6).
addition (num i5) (num i3) (num i6).
addition (num i5) (num i4) (num i6).
addition (num i5) (num i5) (num i6).
addition (num i5) (num i6) (num i6).
addition (num i6) (num i0) (num i6).
addition (num i6) (num i1) (num i6).
addition (num i6) (num i2) (num i6).
addition (num i6) (num i3) (num i6).
addition (num i6) (num i4) (num i6).
addition (num i6) (num i5) (num i6).
addition (num i6) (num i6) (num i6).

equality(num i0) (num i0) tt.
equality(num i0) (num i1) ff.
equality(num i0) (num i2) ff.
equality(num i0) (num i3) ff.
equality(num i0) (num i4) ff.
equality(num i0) (num i5) ff.
equality(num i0) (num i6) ff.
equality(num i1) (num i0) ff.
equality(num i1) (num i1) tt.
equality(num i1) (num i2) ff.
equality(num i1) (num i3) ff.
equality(num i1) (num i4) ff.
equality(num i1) (num i5) ff.
equality(num i1) (num i6) ff.
equality(num i2) (num i0) ff.
equality(num i2) (num i1) ff.
equality(num i2) (num i2) tt.
equality(num i2) (num i3) ff.
equality(num i2) (num i4) ff.
equality(num i2) (num i5) ff.
equality(num i2) (num i6) ff.
equality(num i3) (num i0) ff.
equality(num i3) (num i1) ff.
equality(num i3) (num i2) ff.
equality(num i3) (num i3) tt.
equality(num i3) (num i4) ff.
equality(num i3) (num i5) ff.
equality(num i3) (num i6) ff.
equality(num i4) (num i0) ff.
equality(num i4) (num i1) ff.
equality(num i4) (num i2) ff.
equality(num i4) (num i3) ff.
equality(num i4) (num i4) tt.
equality(num i4) (num i5) ff.
equality(num i4) (num i6) ff.
equality(num i5) (num i0) ff.
equality(num i5) (num i1) ff.
equality(num i5) (num i2) ff.
equality(num i5) (num i3) ff.
equality(num i5) (num i4) ff.
equality(num i5) (num i5) tt.
equality(num i5) (num i6) ff.
equality(num i6) (num i0) ff.
equality(num i6) (num i1) ff.
equality(num i6) (num i2) ff.
equality(num i6) (num i3) ff.
equality(num i6) (num i4) ff.
equality(num i6) (num i5) ff.
equality(num i6) (num i6) tt.
