import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure ThermalConductivityPackage where
  latticeThermalConductivity : ℝ
  electronicThermalConductivity : ℝ
  temperatureDependentModel : Prop
  phononScatteringModel : Prop
  totalThermalConductivity : ℝ
  latticeThermalConductivityNonnegative : latticeThermalConductivity ≥ 0
  electronicThermalConductivityNonnegative : electronicThermalConductivity ≥ 0
  totalThermalConductivityPositive : totalThermalConductivity > 0
  temperatureDependentModelTerm : temperatureDependentModel
  phononScatteringModelTerm : phononScatteringModel

structure ThermalConductivityEvidence (T : ThermalConductivityPackage) where
  temperatureDependentModelClosed : T.temperatureDependentModel
  phononScatteringModelClosed : T.phononScatteringModel

def ThermalConductivityClosed (T : ThermalConductivityPackage) : Prop :=
  T.temperatureDependentModel ∧ T.phononScatteringModel

theorem thermal_conductivity_closed_from_evidence (T : ThermalConductivityPackage) (E : ThermalConductivityEvidence T) : ThermalConductivityClosed T :=
  And.intro E.temperatureDependentModelClosed E.phononScatteringModelClosed

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse