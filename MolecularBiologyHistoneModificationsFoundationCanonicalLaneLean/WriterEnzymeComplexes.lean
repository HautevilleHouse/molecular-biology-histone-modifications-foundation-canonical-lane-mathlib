import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean.HistoneModificationTypes

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure WriterEnzymeComplex where
  complexName : String
  catalyticSubunit : String
  modificationCatalyzed : HistoneModificationType
  targetSequence : String

structure HistoneAcetyltransferase (HAT) extends WriterEnzymeComplex where
  acetylCoABinding : Prop
  cofactor : String

structure HistoneMethyltransferase (HMT) extends WriterEnzymeComplex where
  sAdenosylMethionineBinding : Prop
  methylGroupDonor : String

def writerComplexes : List WriterEnzymeComplex :=
  [{ complexName := "Gcn5", catalyticSubunit := "Gcn5", modificationCatalyzed := { name := "H3K9ac", residueModification := "acetylation", epigeneticFunction := "transcription activation" }, targetSequence := "G-K" }]

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse