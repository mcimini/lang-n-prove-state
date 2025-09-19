module asm.

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


%% map R
lookupEnvR (contentEnvR T1 T2) r1 T1. 
lookupEnvR (contentEnvR T1 T2) r2 T2. 

lookupMapR (contentMapR E1 E2) r1 E1. 
lookupMapR (contentMapR E1 E2) r2 E2. 

updateMapR (contentMapR E1 E2) r1 E1' (contentMapR E1' E2).
updateMapR (contentMapR E1 E2) r2 E2' (contentMapR E1 E2').


typeOf Gamma EnvH EnvR (zero) (int).
typeOf Gamma EnvH EnvR (halt) (unitT).

typeOf Gamma EnvH EnvR (add Zd Zs E1 E2) (unitT) :- 
	typeOneZ Gamma EnvR Zd SomeT, 
	typeOneZ Gamma EnvR Zs (int), 
	typeOf Gamma EnvH EnvR E1 (int), 
	typeOf Gamma EnvH EnvR' E2 (unitT),  
	updateEnvR EnvR Zd (int) EnvR'. 

typeOf Gamma EnvH EnvR (mult Zd Zs E1 E2) (unitT) :- 
	typeOneZ Gamma EnvR Zd SomeT, 
	typeOneZ Gamma EnvR Zs (int), 
	typeOf Gamma EnvH EnvR E1 (int), 
	typeOf Gamma EnvH EnvR' E2 (unitT),  
	updateEnvR EnvR Zd (int) EnvR'. 


typeOf Gamma EnvH EnvR (load Zd Zs E) (unitT) :- 
	typeOneZ Gamma EnvR Zd SomeT, 
	typeOneZ Gamma EnvR Zs (refH T), 
	typeOf Gamma EnvH EnvR' E (unitT), 
	updateEnvR EnvR Zd T EnvR'. 

typeOf Gamma EnvH EnvR (malloc Zd E1 E2) (unitT) :- 
	typeOneZ Gamma EnvR Zd SomeT, 
	typeOf Gamma EnvH EnvR E1 T, 
	typeOf Gamma EnvH EnvR' E2 (unitT), 
	updateEnvR EnvR Zd T EnvR'.

typeOf Gamma EnvH EnvR (move Zd E1 E2) (unitT) :- 
	typeOneZ Gamma EnvR Zd SomeT, 
	typeOf Gamma EnvH EnvR E1 T, 
	typeOf Gamma EnvH EnvR' E2 (unitT), 
	updateEnvR EnvR Zd T EnvR'. 
	

typeOf Gamma EnvH EnvR (store Zd Zs E) (unitT) :- 
	typeOneZ Gamma EnvR Zd (refH T), 
	typeOneZ Gamma EnvR Zs T, 
	typeOf Gamma EnvH EnvR E (unitT). 

typeOf Gamma EnvH EnvR (labelH L) (refH T) :- lookupEnvH EnvH L T.


step (add Zd Zs V1 E) H R E H R' :- 
	lookupMapR R Zs V2, 
	addition V1 V2 V3, 
	updateMapR R Zd V3 R'. 

step (mult Zd Zs V1 E) H R E H R' :- 
	lookupMapR R Zs V2, 
	multiplication V1 V2 V3, 
	updateMapR R Zd V3 R'. 

step (load Zd Zs E) H R E H R' :- 
	lookupMapR R Zs (labelH L), 
	lookupMapH H L V, 
	updateMapR R Zd V R'. 

step (malloc Zd V E) H R E H' R' :- 
	addMapH H V H' LNewH, 
	updateMapR R Zd (labelH LNewH) R'. 

step (move Zd V E) H R E H R' :- 
	updateMapR R Zd V R'. 

step (store Zd Zs E) H R E H' R :- 
	lookupMapR R Zd (labelH L), 
	lookupMapR R Zs V, 
	updateMapH H L V H'. 

value (halt).
value (zero).
value (labelH L).



