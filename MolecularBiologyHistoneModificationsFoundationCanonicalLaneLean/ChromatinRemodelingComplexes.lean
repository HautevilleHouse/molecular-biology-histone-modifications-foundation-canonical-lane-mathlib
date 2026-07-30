import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundation

structure ChromatinRemodelingComplexesPackage where
  complexType : Type
  atpDependentActivity : Prop
  nucleosomeSliding : Prop
  histoneEviction : Prop
  atpDependentActivityTerm : atpDependentActivity
  nucleosomeSlidingTerm : nucleosomeSliding
  histoneEvictionTerm : histoneEviction

structure ChromatinRemodelingComplexesEvidence
    (C : ChromatinRemodelingComplexesPackage) where
  atpDependentActivityClosed : C.atpDependentActivity
  nucleosomeSlidingClosed : C.nucleosomeSliding
  histoneEvictionClosed : C.histoneEviction

def ChromatinRemodelingComplexesClosed
    (C : ChromatinRemodelingComplexesPackage) : Prop :=
  C.atpDependentActivity ∧ C.nucleosomeSliding ∧ C.histoneEviction

theorem chromatin_remodeling_complexes_closed_from_evidence
    (C : ChromatinRemodelingComplexesPackage)
    (Ev : ChromatinRemodelingComplexesEvidence C) :
    ChromatinRemodelingComplexesClosed C := by
  exact And.intro Ev.atpDependentActivityClosed
    (And.intro Ev.nucleosomeSlidingClosed Ev.histoneEvictionClosed)

end MolecularBiologyHistoneModificationsFoundation
end HautevilleHouse