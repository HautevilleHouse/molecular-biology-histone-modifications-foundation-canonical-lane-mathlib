import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean.HistoneModificationTypes

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure ReaderDomain where
  domainName : String
  recognizedModifications : List HistoneModificationType
  bindingAffinity : Prop

structure ChromatinReaderComplex where
  readerDomains : List ReaderDomain
  cooperativeBinding : Prop
  downstreamEffect : Prop

def readerDomainClosed (R : ReaderDomain) : Prop :=
  R.bindingAffinity

theorem reader_domain_closed_from_structure (R : ReaderDomain) : readerDomainClosed R := by
  exact R.bindingAffinity

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse