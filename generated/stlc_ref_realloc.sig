sig stlc_ref_realloc.

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



type arrow typ -> typ -> typ.
type unitT typ.
type refH typ -> typ.

type abs typ -> (term -> term) -> term.
type app term -> term -> term.
type unit term.
type labelH labelH -> term.
type ref term -> term. 
type deref term -> term.
type assign term -> term -> term.

type realloc term -> term -> term -> term.

type int typ.
type list typ -> typ.

type cons term -> term -> term.
type emptyList term.
type succ term -> term.
type zero term.
type error term.

type value term -> o.
type step term -> mapH -> term -> mapH -> o.

kind envT type.
type nilEnvT envT.
type consEnvT term -> typ -> envT -> envT.

type typeOf envT -> envH -> term -> typ -> o.
