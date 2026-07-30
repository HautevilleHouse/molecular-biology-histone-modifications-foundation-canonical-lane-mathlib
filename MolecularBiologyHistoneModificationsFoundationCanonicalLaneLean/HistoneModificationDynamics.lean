import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean.WriterEnzymeComplexes

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure HistoneModificationDynamics where
  writerActivity : Prop
  eraserActivity : Prop
  readerBinding : Prop
  modificationHalfLife : Nat

structure SteadyStateModificationLevel extends HistoneModificationDynamics where
  equilibriumConcentration : ℝ
  productionRate : ℝ
  decayRate : ℝ

def defaultDynamics : HistoneModificationDynamics :=
  { writerActivity := True, eraserActivity := True, readerBinding := True, modificationHalfLife := 3600 }

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse