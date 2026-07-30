import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundation

structure HistoneModificationPatternsPackage where
  histoneType : Type
  modificationState : Type
  modificationCombinatorics : Prop
  patternConservation : Prop
  patternConservationTerm : patternConservation

structure HistoneModificationPatternsEvidence (P : HistoneModificationPatternsPackage) where
  modificationCombinatoricsClosed : P.modificationCombinatorics
  patternConservationClosed : P.patternConservation

def HistoneModificationPatternsClosed (P : HistoneModificationPatternsPackage) : Prop :=
  P.modificationCombinatorics ∧ P.patternConservation

theorem histone_modification_patterns_closed_from_evidence
    (P : HistoneModificationPatternsPackage)
    (E : HistoneModificationPatternsEvidence P) :
    HistoneModificationPatternsClosed P := by
  exact And.intro E.modificationCombinatoricsClosed E.patternConservationClosed

end MolecularBiologyHistoneModificationsFoundation
end HautevilleHouse