import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  crackPropagation : Prop
  stressIntensityFactor : Prop
  fractureToughness : Prop
  parisLaw : Prop
  griffithCriterion : Prop

structure FractureMechanicsEvidence (P : FractureMechanicsPackage) where
  crackPropagationClosed : P.crackPropagation
  stressIntensityFactorClosed : P.stressIntensityFactor
  fractureToughnessClosed : P.fractureToughness
  parisLawClosed : P.parisLaw
  griffithCriterionClosed : P.griffithCriterion

def FractureMechanicsClosed (P : FractureMechanicsPackage) : Prop :=
  P.crackPropagation ∧ P.stressIntensityFactor ∧ P.fractureToughness ∧ P.parisLaw ∧ P.griffithCriterion

theorem fracture_mechanics_closed_from_evidence (P : FractureMechanicsPackage) (E : FractureMechanicsEvidence P) :
    FractureMechanicsClosed P := by
  exact And.intro E.crackPropagationClosed
    (And.intro E.stressIntensityFactorClosed
      (And.intro E.fractureToughnessClosed
        (And.intro E.parisLawClosed E.griffithCriterionClosed)))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse