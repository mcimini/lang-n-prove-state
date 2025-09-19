module stlc_ref_comp.

%% map H
lookupEnvH (consEnvH L T EnvH) L T.
lookupEnvH (consEnvH L1 T1 EnvH) L T :- lookupEnvH EnvH L T.

subsetEnvH EnvH EnvH.
subsetEnvH EnvH (consEnvH L T Rest) :- subsetEnvH EnvH Rest.

lookupMapH (consMapH L E MU) L E.
lookupMapH (consMapH L1 E1 MU) L E :- lookupMapH MU L E.

updateMapH (consMapH L E MU) L E' (consMapH L E' MU).
updateMapH (consMapH L1 E1 MU) L E' (consMapH L1 E1 MU') :- updateMapH MU L E' MU'.

%%addMapH nilMapH  E (consMapH zeroLabelH E nilMapH) zeroLabelH.
addMapH (consMapH L E1 MU) E2 (consMapH (succLabelH L) E2 (consMapH L E1 MU)) (succLabelH L). 


%% map M
lookupEnvM (consEnvM L T EnvM) L T.
lookupEnvM (consEnvM L1 T1 EnvM) L T :- lookupEnvM EnvM L T.

subsetEnvM EnvM EnvM.
subsetEnvM EnvM (consEnvM L T Rest) :- subsetEnvM EnvM Rest.

lookupMapM (consMapM L E MU) L E.
lookupMapM (consMapM L1 E1 MU) L E :- lookupMapM MU L E.

updateMapM (consMapM L E MU) L E' (consMapM L E' MU).
updateMapM (consMapM L1 E1 MU) L E' (consMapM L1 E1 MU') :- updateMapM MU L E' MU'.

%%addMapM nilMapM  E (consMapM zeroLabelM E nilMapM) zeroLabelM.
addMapM (consMapM L E1 MU) E2 (consMapM (succLabelM L) E2 (consMapM L E1 MU)) (succLabelM L). 


typeOf Gamma EnvH EnvM (abs T1 R) (arrow T1 T2) :-
    (pi x\ typeOf (consEnvT x T1 Gamma) EnvH EnvM (R x) T2).
typeOf Gamma EnvH EnvM (app E1 E2) T2 :-
    typeOf Gamma EnvH EnvM E1 (arrow T1 T2),
    typeOf Gamma EnvH EnvM E2 T1.
typeOf Gamma EnvH EnvM (ref E1) (refH T) :- typeOf Gamma EnvH EnvM E1 T.
typeOf Gamma EnvH EnvM (deref E1) T :- typeOf Gamma EnvH EnvM E1 (refH T).
typeOf Gamma EnvH EnvM (assign E1 E2) (unitT) :-
    typeOf Gamma EnvH EnvM E1 (refH T),
    typeOf Gamma EnvH EnvM E2 T.
typeOf Gamma EnvH EnvM (labelH L) (refH T) :- lookupEnvH EnvH L T.
typeOf Gamma EnvH EnvM (labelM L) (refM T) :- lookupEnvM EnvM L T.
typeOf Gamma EnvH EnvM (unit) (unitT).

typeOf Gamma EnvH EnvM (refAndStore E1) (times (refH T) (times (refH (refM (refH T))) (refM (refH T)))) :- typeOf Gamma EnvH EnvM E1 T.

typeOf Gamma EnvH EnvM (pair E1 E2) (times T1 T2) :-
    typeOf Gamma EnvH EnvM E1 T1,
    typeOf Gamma EnvH EnvM E2 T2.


step (app (abs T R) V) MU1 MU2 (R V) MU1 MU2 :- value V.
step (ref V) MU1 MU2 (labelH LNewH) MU1' MU2 :- addMapH MU1 V MU1' LNewH, value V. 
step (deref (labelH GET)) MU1 MU2 V MU1 MU2 :- lookupMapH MU1 GET V, value V. 
step (assign (labelH GET) V) MU1 MU2 unit MU1' MU2 :- updateMapH MU1 GET V MU1', value V.

step (refAndStore V) MU1 MU2 (pair (labelH LNewH) (pair (labelH LNewH2) (labelM LNewM))) MU1'' MU2' :- addMapH MU1 V MU1' LNewH, addMapM MU2 (labelH LNewH) MU2' LNewM, addMapH MU1' (labelM LNewM) MU1'' LNewH2, value V. 



value (abs E1 E2).
value (unit).
value (labelH L).
value (labelM L).
value (pair V1 V2) :- value V1, value V2. 

step (app E1 E2) MU1 MU2 (app E1' E2) MU1' MU2' :- step E1 MU1 MU2 E1' MU1' MU2'.
step (app E1 E2) MU1 MU2 (app E1 E2') MU1' MU2' :- step E2 MU1 MU2 E2' MU1' MU2', value E1.
step (ref E1) MU1 MU2 (ref E1') MU1' MU2' :- step E1 MU1 MU2 E1' MU1' MU2'.
step (deref E) MU1 MU2 (deref E') MU1' MU2' :- step E MU1 MU2 E' MU1' MU2'.
step (assign E1 E2) MU1 MU2 (assign E1' E2) MU1' MU2' :- step E1 MU1 MU2 E1' MU1' MU2'.
step (assign E1 E2) MU1 MU2 (assign E1 E2') MU1' MU2' :- step E2 MU1 MU2 E2' MU1' MU2', value E1.

step (refAndStore E1) MU1 MU2 (refAndStore E1') MU1' MU2' :- step E1 MU1 MU2 E1' MU1' MU2'.
