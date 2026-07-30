import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  componentSystem : Type u
  temperatureRange : Prop
  pressureRange : Prop
  phaseBoundaries : Prop
  stoichiometricCompounds : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  componentSystemClosed : P.componentSystem
  temperatureRangeClosed : P.temperatureRange
  pressureRangeClosed : P.pressureRange
  phaseBoundariesClosed : P.phaseBoundaries
  stoichiometricCompoundsClosed : P.stoichiometricCompounds

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.componentSystem ∧ P.temperatureRange ∧ P.pressureRange ∧
  P.phaseBoundaries ∧ P.stoichiometricCompounds

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.componentSystemClosed
    (And.intro E.temperatureRangeClosed
      (And.intro E.pressureRangeClosed
        (And.intro E.phaseBoundariesClosed E.stoichiometricCompoundsClosed)))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
