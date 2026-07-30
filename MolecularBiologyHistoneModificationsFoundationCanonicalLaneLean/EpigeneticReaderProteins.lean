import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean.HistoneModificationTypes

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure EpigeneticReaderProtein where
  name : String
  bindingDomain : Prop
  recognizedModification : HistoneModificationType

structure Bromodomain extends EpigeneticReaderProtein where
  acetylLysineBinding : Acetylation → Prop

structure Chromodomain extends EpigeneticReaderProtein where
  methylLysineBinding : Methylation → Prop

def readerProteins : List EpigeneticReaderProtein :=
  [{ name := "Brd4", bindingDomain := True, recognizedModification := { name := "H3K27ac", residueModification := "acetylation", epigeneticFunction := "enhancer activation" } }]

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse