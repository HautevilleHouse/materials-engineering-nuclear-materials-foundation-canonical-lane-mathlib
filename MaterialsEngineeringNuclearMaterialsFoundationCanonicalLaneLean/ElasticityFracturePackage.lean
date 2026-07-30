import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure ElasticityPackage where
  youngModulus : ℝ → ℝ
  poissonRatio : ℝ → ℝ
  stressStrainLaw : Prop
  fractureToughness : ℝ

structure ElasticityEvidence (E : ElasticityPackage) where
  youngModulusClosed : ∀ x, E.youngModulus x > 0
  poissonRatioClosed : ∀ x, 0 < E.poissonRatio x ∧ E.poissonRatio x < 0.5
  stressStrainLawClosed : E.stressStrainLaw
  fractureToughnessClosed : E.fractureToughness ≥ 25

def ElasticityPackageClosed (E : ElasticityPackage) : Prop :=
  (∀ x, E.youngModulus x > 0) ∧
  (∀ x, 0 < E.poissonRatio x ∧ E.poissonRatio x < 0.5) ∧
  E.stressStrainLaw ∧
  E.fractureToughness ≥ 25

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (ev : ElasticityEvidence E) : ElasticityPackageClosed E := by
  exact And.intro ev.youngModulusClosed
    (And.intro ev.poissonRatioClosed
      (And.intro ev.stressStrainLawClosed ev.fractureToughnessClosed))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse