import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure HistoneModificationReader where
  modificationType : String
  readerDomain : Type
  readerDomainTopology : TopologicalSpace readerDomain
  bromodomainPresent : Prop
  chromodomainPresent : Prop
  tudordomainPresent : Prop
  modificationRecognized : Prop
  conclusion : modificationRecognized

structure HistoneAdmittedObject where
  reader : HistoneModificationReader
  nucleosomeContext : Prop
  modificationPresent : Prop

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse