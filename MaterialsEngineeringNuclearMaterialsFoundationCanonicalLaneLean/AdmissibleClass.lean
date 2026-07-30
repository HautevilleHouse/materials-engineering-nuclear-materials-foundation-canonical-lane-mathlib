import materialsengineeringnuclearmaterialsfoundationcanonicallanelean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : MaterialsEngineeringNuclearMaterialsFoundationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MaterialsEngineeringNuclearMaterialsFoundationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
