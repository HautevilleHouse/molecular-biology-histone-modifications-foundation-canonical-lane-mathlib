import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure ChromatinStatePackage where
  modificationSet : List String
  stateTransitions : Prop
  openChromatinMarkers : Prop
  closedChromatinMarkers : Prop
  bivalentDomainMarkers : Prop

structure ChromatinStateEvidence (C : ChromatinStatePackage) where
  stateTransitionsClosed : C.stateTransitions
  openChromatinMarkersClosed : C.openChromatinMarkers
  closedChromatinMarkersClosed : C.closedChromatinMarkers
  bivalentDomainMarkersClosed : C.bivalentDomainMarkers

def ChromatinStateClosed (C : ChromatinStatePackage) : Prop :=
  C.stateTransitions ∧ C.openChromatinMarkers ∧
  C.closedChromatinMarkers ∧ C.bivalentDomainMarkers

theorem chromatin_state_closed_from_evidence (C : ChromatinStatePackage)
    (E : ChromatinStateEvidence C) : ChromatinStateClosed C := by
  exact And.intro E.stateTransitionsClosed
    (And.intro E.openChromatinMarkersClosed
      (And.intro E.closedChromatinMarkersClosed E.bivalentDomainMarkersClosed))

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse