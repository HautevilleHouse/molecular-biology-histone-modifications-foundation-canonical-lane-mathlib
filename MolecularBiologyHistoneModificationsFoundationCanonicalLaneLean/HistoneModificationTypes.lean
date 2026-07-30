import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure HistoneModificationType where
  name : String
  residue : String
  modificationKind : String -- e.g., "methylation", "acetylation"

structure HistoneModificationPosition where
  histone : String  -- e.g., "H3", "H4"
  residue : String
  position : Nat

structure HistoneModificationCode where
  modifications : List HistoneModificationType
  positions : List HistoneModificationPosition
  combinatorialEffect : Prop

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse