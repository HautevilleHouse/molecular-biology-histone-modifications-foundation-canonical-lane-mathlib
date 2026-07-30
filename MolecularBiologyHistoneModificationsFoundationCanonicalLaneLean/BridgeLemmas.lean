import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HistoneModificationsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse
