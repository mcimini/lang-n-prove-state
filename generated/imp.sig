sig imp.

kind term type.
kind typ type.

%% map H
kind labelH type.
type zeroLabelH labelH.
type succLabelH labelH -> labelH.

kind mapH type.
type nilMapH mapH.
type consMapH labelH -> term -> mapH -> mapH.

type lookupMapH mapH -> labelH -> term -> o.
type updateMapH mapH -> labelH -> term -> mapH -> o.
type addMapH mapH -> term -> mapH -> labelH -> o.

kind envH type.
type nilEnvH envH.
type consEnvH labelH -> typ -> envH -> envH.

type lookupEnvH envH -> labelH -> typ -> o.
type subsetEnvH envH -> envH -> o.


type int typ.
type bool typ.
type unitT typ.
type refH typ -> typ.

kind number type. 
type zero number. 

type num number -> term.
type tt term.
type ff term.
type unit term.
type labelH labelH -> term.
type deref term -> term.
type assign term -> term -> term.
type plus term -> term -> term.
type equal term -> term -> term.
type while term -> term -> term.
type seq term -> term -> term.
type if term -> term -> term -> term.

type value term -> o.
type step term -> mapH -> term -> mapH -> o.

kind envT type.
type nilEnvT envT.
type consEnvT term -> typ -> envT -> envT.

type typeOf envT -> envH -> term -> typ -> o.

type addition term -> term -> term -> o.
type equality term -> term -> term -> o.

