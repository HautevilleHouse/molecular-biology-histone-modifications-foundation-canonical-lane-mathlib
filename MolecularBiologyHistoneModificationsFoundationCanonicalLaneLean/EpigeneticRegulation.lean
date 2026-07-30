import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundation

structure EpigeneticRegulationPackage where
  regulatoryElement : Type
  chromatinState : Prop
  geneExpressionMapping : Prop
  regulationStability : Prop
  regulationStabilityTerm : regulationStability

structure EpigeneticRegulationEvidence (E : EpigeneticRegulationPackage) where
  chromatinStateClosed : E.chromatinState
  geneExpressionMappingClosed : E.geneExpressionMapping
  regulationStabilityClosed : E.regulationStability

def EpigeneticRegulationClosed (E : EpigeneticRegulationPackage) : Prop :=
  E.chromatinState ∧ E.geneExpressionMapping ∧ E.regulationStability

theorem epigenetic_regulation_closed_from_evidence
    (E : EpigeneticRegulationPackage)
    (Ev : EpigeneticRegulationEvidence E) :
    EpigeneticRegulationClosed E := by
  exact And.intro Ev.chromatinStateClosed
    (And.intro Ev.geneExpressionMappingClosed Ev.regulationStabilityClosed)

end MolecularBiologyHistoneModificationsFoundation
end HautevilleHouse