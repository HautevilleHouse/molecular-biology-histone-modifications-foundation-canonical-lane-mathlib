import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean.HistoneModificationTypes

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure WriterEnzyme where
  enzymeName : String
  catalyzedModification : HistoneModificationType
  catalyticActivity : Prop

structure EraserEnzyme where
  enzymeName : String
  removedModification : HistoneModificationType
  removalActivity : Prop

structure HistoneModificationEnzymeSystem where
  writers : List WriterEnzyme
  erasers : List EraserEnzyme
  dynamicRegulation : Prop

def writerEnzymeClosed (W : WriterEnzyme) : Prop :=
  W.catalyticActivity

def eraserEnzymeClosed (E : EraserEnzyme) : Prop :=
  E.removalActivity

theorem writer_enzyme_closed_from_structure (W : WriterEnzyme) : writerEnzymeClosed W := by
  exact W.catalyticActivity

theorem eraser_enzyme_closed_from_structure (E : EraserEnzyme) : eraserEnzymeClosed E := by
  exact E.removalActivity

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse