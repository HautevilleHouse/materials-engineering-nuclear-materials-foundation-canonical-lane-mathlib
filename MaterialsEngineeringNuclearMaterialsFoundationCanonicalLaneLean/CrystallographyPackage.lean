import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : Type u
  basisVectors : Nat -> Type v
  unitCellVolume : Prop
  bravaisLatticeClassification : Prop
  symmetryGroup : Type w

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeTypeClosed : C.latticeType
  basisVectorsClosed : C.basisVectors
  unitCellVolumeClosed : C.unitCellVolume
  bravaisLatticeClassificationClosed : C.bravaisLatticeClassification
  symmetryGroupClosed : C.symmetryGroup

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeType ∧ C.basisVectors ∧ C.unitCellVolume ∧
  C.bravaisLatticeClassification ∧ C.symmetryGroup

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeTypeClosed
    (And.intro E.basisVectorsClosed
      (And.intro E.unitCellVolumeClosed
        (And.intro E.bravaisLatticeClassificationClosed E.symmetryGroupClosed)))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
