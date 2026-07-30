import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundation

structure CellDifferentiationMemoryPackage where
  cellType : Type
  histoneModificationPatternMemory : Prop
  lineageCommitment : Prop
  memoryMaintenance : Prop
  memoryMaintenanceTerm : memoryMaintenance

structure CellDifferentiationMemoryEvidence
    (C : CellDifferentiationMemoryPackage) where
  histoneModificationPatternMemoryClosed : C.histoneModificationPatternMemory
  lineageCommitmentClosed : C.lineageCommitment
  memoryMaintenanceClosed : C.memoryMaintenance

def CellDifferentiationMemoryClosed
    (C : CellDifferentiationMemoryPackage) : Prop :=
  C.histoneModificationPatternMemory ∧ C.lineageCommitment ∧ C.memoryMaintenance

theorem cell_differentiation_memory_closed_from_evidence
    (C : CellDifferentiationMemoryPackage)
    (Ev : CellDifferentiationMemoryEvidence C) :
    CellDifferentiationMemoryClosed C := by
  exact And.intro Ev.histoneModificationPatternMemoryClosed
    (And.intro Ev.lineageCommitmentClosed Ev.memoryMaintenanceClosed)

end MolecularBiologyHistoneModificationsFoundation
end HautevilleHouse