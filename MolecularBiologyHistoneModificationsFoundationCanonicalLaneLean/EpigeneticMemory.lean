import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure EpigeneticMemoryPackage where
  cellCycle : Type
  markPropagation : Prop
  memoryStability : Prop
  environmentalResponse : Prop

def EpigeneticMemoryClosed (E : EpigeneticMemoryPackage) : Prop :=
  E.markPropagation ∧ E.memoryStability ∧ E.environmentalResponse

structure EpigeneticMemoryEvidence (E : EpigeneticMemoryPackage) where
  markPropagationTerm : E.markPropagation
  memoryStabilityTerm : E.memoryStability
  environmentalResponseTerm : E.environmentalResponse

theorem epigenetic_memory_closed_from_evidence
  (E : EpigeneticMemoryPackage) (Ev : EpigeneticMemoryEvidence E) :
  EpigeneticMemoryClosed E := by
  exact And.intro Ev.markPropagationTerm (And.intro Ev.memoryStabilityTerm Ev.environmentalResponseTerm)

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse