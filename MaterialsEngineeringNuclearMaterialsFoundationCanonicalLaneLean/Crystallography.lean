import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Prop
  crystalSystem : Prop
  pointGroup : Prop
  spaceGroup : Prop
  latticeParameters : Prop

structure CrystallographyEvidence (P : CrystallographyPackage) where
  bravaisLatticeClosed : P.bravaisLattice
  crystalSystemClosed : P.crystalSystem
  pointGroupClosed : P.pointGroup
  spaceGroupClosed : P.spaceGroup
  latticeParametersClosed : P.latticeParameters

def CrystallographyClosed (P : CrystallographyPackage) : Prop :=
  P.bravaisLattice ∧ P.crystalSystem ∧ P.pointGroup ∧ P.spaceGroup ∧ P.latticeParameters

theorem crystallography_closed_from_evidence (P : CrystallographyPackage) (E : CrystallographyEvidence P) :
    CrystallographyClosed P := by
  exact And.intro E.bravaisLatticeClosed
    (And.intro E.crystalSystemClosed
      (And.intro E.pointGroupClosed
        (And.intro E.spaceGroupClosed E.latticeParametersClosed)))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse