import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Prop
  fractureToughness : Prop
  energyReleaseRate : Prop
  crackPropagationCriterion : Prop
  materialFractureRegime : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  energyReleaseRateClosed : F.energyReleaseRate
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  materialFractureRegimeClosed : F.materialFractureRegime

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧ F.energyReleaseRate ∧
  F.crackPropagationCriterion ∧ F.materialFractureRegime

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.fractureToughnessClosed
      (And.intro E.energyReleaseRateClosed
        (And.intro E.crackPropagationCriterionClosed E.materialFractureRegimeClosed)))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
