import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure HistoneModificationsAdmittedObject where
  histoneModificationPattern : Type
  epigeneticState : Prop
  geneExpression : Prop
  modificationEnzyme : Type
  chromatinRemodeling : Prop
  conclusion : chromatinRemodeling

structure AdmissibleClass where
  object : HistoneModificationsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HistoneModificationsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse
