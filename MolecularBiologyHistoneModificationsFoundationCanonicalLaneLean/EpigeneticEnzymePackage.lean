import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure EpigeneticEnzymePackage (C : ChromatinStatePackage) where
  writerEnzyme : Type
  eraserEnzyme : Type
  writerCatalyticActivity : Prop
  eraserCatalyticActivity : Prop
  substrateSpecificity : Prop

structure EpigeneticEnzymeEvidence {C : ChromatinStatePackage}
    (E : EpigeneticEnzymePackage C) where
  writerCatalyticActivityClosed : E.writerCatalyticActivity
  eraserCatalyticActivityClosed : E.eraserCatalyticActivity
  substrateSpecificityClosed : E.substrateSpecificity

def EpigeneticEnzymeClosed {C : ChromatinStatePackage}
    (E : EpigeneticEnzymePackage C) : Prop :=
  E.writerCatalyticActivity ∧ E.eraserCatalyticActivity ∧ E.substrateSpecificity

theorem epigenetic_enzyme_closed_from_evidence {C : ChromatinStatePackage}
    (E : EpigeneticEnzymePackage C) (Ev : EpigeneticEnzymeEvidence E) :
    EpigeneticEnzymeClosed E := by
  exact And.intro Ev.writerCatalyticActivityClosed
    (And.intro Ev.eraserCatalyticActivityClosed Ev.substrateSpecificityClosed)

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse