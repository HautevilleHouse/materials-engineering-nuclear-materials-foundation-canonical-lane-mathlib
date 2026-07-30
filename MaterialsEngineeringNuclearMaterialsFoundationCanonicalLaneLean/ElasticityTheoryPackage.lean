import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure ElasticityTheoryPackage where
  elasticModuli : ℝ × ℝ × ℝ
  shearModulus : ℝ
  poissonRatio : ℝ
  youngsModulus : ℝ
  stressStrainRelation : Prop
  isotropyAssumed : Prop
  linearElasticRange : Prop
  elasticModuliPositive : elasticModuli.1 > 0 ∧ elasticModuli.2.1 > 0 ∧ elasticModuli.2.2 > 0
  shearModulusPositive : shearModulus > 0
  poissonRatioRange : -1 < poissonRatio ∧ poissonRatio < 0.5
  youngsModulusPositive : youngsModulus > 0
  stressStrainRelationTerm : stressStrainRelation
  isotropyAssumedTerm : isotropyAssumed
  linearElasticRangeTerm : linearElasticRange

structure ElasticityTheoryEvidence (E : ElasticityTheoryPackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  isotropyAssumedClosed : E.isotropyAssumed
  linearElasticRangeClosed : E.linearElasticRange

def ElasticityTheoryClosed (E : ElasticityTheoryPackage) : Prop :=
  E.stressStrainRelation ∧ E.isotropyAssumed ∧ E.linearElasticRange

theorem elasticity_theory_closed_from_evidence (E : ElasticityTheoryPackage) (Ev : ElasticityTheoryEvidence E) : ElasticityTheoryClosed E :=
  And.intro Ev.stressStrainRelationClosed (And.intro Ev.isotropyAssumedClosed Ev.linearElasticRangeClosed)

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse