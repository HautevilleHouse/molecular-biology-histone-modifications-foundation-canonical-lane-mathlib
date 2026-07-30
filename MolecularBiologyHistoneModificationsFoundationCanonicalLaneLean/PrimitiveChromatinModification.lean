import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure PrimitiveNucleosome where
  Point : Type
  histoneType : Type
  postTranslationalModification : Type
  dnaWrapping : Prop
  modificationPattern : Prop

definitionalHistoneOctamer : Prop := True

structure PrimitiveHistoneModificationSystem (N : PrimitiveNucleosome) where
  modificationState : N.Point → N.postTranslationalModification
  writerEnzyme : Type
  readerEnzyme : Type
  eraserEnzyme : Type
  modificationDynamics : Prop
  modificationDynamicsTerm : modificationDynamics

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse