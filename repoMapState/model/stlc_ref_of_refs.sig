sig stlc_ref_of_refs.

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


%% map M
kind labelM type.
type zeroLabelM labelM.
type succLabelM labelM -> labelM.

kind mapM type.
type nilMapM mapM.
type consMapM labelM -> term -> mapM -> mapM.

type lookupMapM mapM -> labelM -> term -> o.
type updateMapM mapM -> labelM -> term -> mapM -> o.
type addMapM mapM -> term -> mapM -> labelM -> o.

kind envM type.
type nilEnvM envM.
type consEnvM labelM -> typ -> envM -> envM.

type lookupEnvM envM -> labelM -> typ -> o.
type subsetEnvM envM -> envM -> o.



type arrow typ -> typ -> typ.
type unitT typ.
type refH typ -> typ.
type refM typ -> typ.

type abs typ -> (term -> term) -> term.
type app term -> term -> term.
type unit term.
type labelH labelH -> term.
type labelM labelM -> term.
type ref term -> term. 
type deref term -> term.
type assign term -> term -> term.
type refOfrefs term -> term.

% pairs, to make better examples. 
type times typ -> typ -> typ.
type pair term -> term -> term.

type value term -> o.
type step term -> mapH -> mapM -> term -> mapH -> mapM -> o.

kind envT type.
type nilEnvT envT.
type consEnvT term -> typ -> envT -> envT.

type typeOf envT -> envH -> envM -> term -> typ -> o.
