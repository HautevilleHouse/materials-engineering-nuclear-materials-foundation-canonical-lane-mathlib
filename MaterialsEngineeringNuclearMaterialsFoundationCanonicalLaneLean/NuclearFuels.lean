import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure FuelPellet where
  composition : String
  density : Float
  porosity : Float
  grainSize : Float

structure NuclearFuelsPackage (F : FuelPellet) where
  thermalConductivityModeled : Prop
  fissionGasReleasePredicted : Prop
  burnupExtensionValid : Prop
  claddingInteractionAssessed : Prop

structure NuclearFuelsEvidence {F : FuelPellet} (P : NuclearFuelsPackage F) where
  thermalConductivityModeledClosed : P.thermalConductivityModeled
  fissionGasReleasePredictedClosed : P.fissionGasReleasePredicted
  burnupExtensionValidClosed : P.burnupExtensionValid
  claddingInteractionAssessedClosed : P.claddingInteractionAssessed

def NuclearFuelsClosed {F : FuelPellet} (P : NuclearFuelsPackage F) : Prop :=
  P.thermalConductivityModeled ∧ P.fissionGasReleasePredicted ∧ P.burnupExtensionValid ∧ P.claddingInteractionAssessed

theorem nuclear_fuels_closed_from_evidence {F : FuelPellet} (P : NuclearFuelsPackage F) (E : NuclearFuelsEvidence P) : NuclearFuelsClosed P := by
  exact And.intro E.thermalConductivityModeledClosed (And.intro E.fissionGasReleasePredictedClosed (And.intro E.burnupExtensionValidClosed E.claddingInteractionAssessedClosed))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse