import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure NuclearMaterial where
  crystalStructure : Type
  irradiationHistory : Prop
  thermalConductivity : ℝ
  elasticModulus : ℝ

structure NuclearMaterialsAdmittedObject where
  material : NuclearMaterial
  admissibilityCondition : Prop
  admissibilityCertificate : admissibilityCondition

structure AdmissibleClass where
  object : NuclearMaterialsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse