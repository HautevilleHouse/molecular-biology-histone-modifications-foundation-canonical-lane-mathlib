import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundation

structure HistoneModificationEnzymeSystemsPackage where
  writer : Type
  eraser : Type
  reader : Type
  catalyticActivity : Prop
  modificationTurnover : Prop
  catalyticActivityTerm : catalyticActivity
  modificationTurnoverTerm : modificationTurnover

structure HistoneModificationEnzymeSystemsEvidence
    (E : HistoneModificationEnzymeSystemsPackage) where
  catalyticActivityClosed : E.catalyticActivity
  modificationTurnoverClosed : E.modificationTurnover

def HistoneModificationEnzymeSystemsClosed
    (E : HistoneModificationEnzymeSystemsPackage) : Prop :=
  E.catalyticActivity ∧ E.modificationTurnover

theorem histone_modification_enzyme_systems_closed_from_evidence
    (E : HistoneModificationEnzymeSystemsPackage)
    (Ev : HistoneModificationEnzymeSystemsEvidence E) :
    HistoneModificationEnzymeSystemsClosed E := by
  exact And.intro Ev.catalyticActivityClosed Ev.modificationTurnoverClosed

end MolecularBiologyHistoneModificationsFoundation
end HautevilleHouse