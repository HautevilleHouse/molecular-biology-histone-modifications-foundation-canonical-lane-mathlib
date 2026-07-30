import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure GeneExpressionRegulationPackage where
  gene : Type
  histoneMark : Type
  transcriptionFactor : Type
  expressionLevel : ℝ
  markRecruitment : Prop
  regulationEvidence : Prop

def GeneExpressionRegulationClosed (G : GeneExpressionRegulationPackage) : Prop :=
  G.markRecruitment ∧ G.regulationEvidence

structure GeneExpressionRegulationEvidence (G : GeneExpressionRegulationPackage) where
  markRecruitmentTerm : G.markRecruitment
  regulationEvidenceTerm : G.regulationEvidence

theorem gene_expression_regulation_closed_from_evidence
  (G : GeneExpressionRegulationPackage) (E : GeneExpressionRegulationEvidence G) :
  GeneExpressionRegulationClosed G := by
  exact And.intro E.markRecruitmentTerm E.regulationEvidenceTerm

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse