import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean.EpigeneticReaderProteins

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure ChromatinState where
  compactionLevel : ℝ
  histoneModifications : List HistoneModificationType
  boundReaderProteins : List EpigeneticReaderProtein
  transcriptionAccessibility : Bool

structure ClosedChromatin extends ChromatinState where
  nucleosomeOccupancy : ℝ
  methylationMark : Prop

structure OpenChromatin extends ChromatinState where
  acetylationMark : Prop
  rnapIIPresence : Bool

def chromatinStateClosed (C : ChromatinState) : Prop :=
  C.transcriptionAccessibility = True ∧ C.compactionLevel < 0.5

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse