import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure EpigeneticMemoryPackage {C : ChromatinStatePackage}
    (E : EpigeneticEnzymePackage C) where
  modificationPropagation : Prop
  cellDivisionHeritability : Prop
  feedbackLoop : Prop
  memoryStability : Prop

structure EpigeneticMemoryEvidence {C : ChromatinStatePackage}
    {E : EpigeneticEnzymePackage C} (M : EpigeneticMemoryPackage E) where
  modificationPropagationClosed : M.modificationPropagation
  cellDivisionHeritabilityClosed : M.cellDivisionHeritability
  feedbackLoopClosed : M.feedbackLoop
  memoryStabilityClosed : M.memoryStability

def EpigeneticMemoryClosed {C : ChromatinStatePackage}
    {E : EpigeneticEnzymePackage C} (M : EpigeneticMemoryPackage E) : Prop :=
  M.modificationPropagation ∧ M.cellDivisionHeritability ∧
  M.feedbackLoop ∧ M.memoryStability

theorem epigenetic_memory_closed_from_evidence {C : ChromatinStatePackage}
    {E : EpigeneticEnzymePackage C} (M : EpigeneticMemoryPackage E)
    (Ev : EpigeneticMemoryEvidence M) : EpigeneticMemoryClosed M := by
  exact And.intro Ev.modificationPropagationClosed
    (And.intro Ev.cellDivisionHeritabilityClosed
      (And.intro Ev.feedbackLoopClosed Ev.memoryStabilityClosed))

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse