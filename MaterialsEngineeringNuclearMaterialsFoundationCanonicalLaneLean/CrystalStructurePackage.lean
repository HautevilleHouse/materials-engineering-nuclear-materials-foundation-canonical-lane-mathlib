import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure CrystalStructurePackage where
  bravaisLattice : Type u
  latticeParameter : Type v
  spaceGroup : Type w
  atomicBasis : Type x
  crystalSystem : Prop
  pointGroup : Prop
  symmetryOperations : Prop
  unitCellVolume : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  crystalSystemClosed : C.crystalSystem
  pointGroupClosed : C.pointGroup
  symmetryOperationsClosed : C.symmetryOperations
  unitCellVolumeClosed : C.unitCellVolume

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.crystalSystem ∧ C.pointGroup ∧ C.symmetryOperations ∧ C.unitCellVolume

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage)
    (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.crystalSystemClosed (And.intro E.pointGroupClosed
    (And.intro E.symmetryOperationsClosed E.unitCellVolumeClosed))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse