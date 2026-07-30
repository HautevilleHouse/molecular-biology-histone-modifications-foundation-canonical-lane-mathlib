import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure GeneExpressionPackage {C : ChromatinStatePackage}
    {E : EpigeneticEnzymePackage C} {M : EpigeneticMemoryPackage E} where
  transcriptionActivation : Prop
  transcriptionRepression : Prop
  polymeraseRecruitment : Prop
  nucleosomeRemodeling : Prop

structure GeneExpressionEvidence {C : ChromatinStatePackage}
    {E : EpigeneticEnzymePackage C} {M : EpigeneticMemoryPackage E}
    (G : GeneExpressionPackage M) where
  transcriptionActivationClosed : G.transcriptionActivation
  transcriptionRepressionClosed : G.transcriptionRepression
  polymeraseRecruitmentClosed : G.polymeraseRecruitment
  nucleosomeRemodelingClosed : G.nucleosomeRemodeling

def GeneExpressionClosed {C : ChromatinStatePackage}
    {E : EpigeneticEnzymePackage C} {M : EpigeneticMemoryPackage E}
    (G : GeneExpressionPackage M) : Prop :=
  G.transcriptionActivation ∧ G.transcriptionRepression ∧
  G.polymeraseRecruitment ∧ G.nucleosomeRemodeling

theorem gene_expression_closed_from_evidence {C : ChromatinStatePackage}
    {E : EpigeneticEnzymePackage C} {M : EpigeneticMemoryPackage E}
    (G : GeneExpressionPackage M) (Ev : GeneExpressionEvidence G) :
    GeneExpressionClosed G := by
  exact And.intro Ev.transcriptionActivationClosed
    (And.intro Ev.transcriptionRepressionClosed
      (And.intro Ev.polymeraseRecruitmentClosed Ev.nucleosomeRemodelingClosed))

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse