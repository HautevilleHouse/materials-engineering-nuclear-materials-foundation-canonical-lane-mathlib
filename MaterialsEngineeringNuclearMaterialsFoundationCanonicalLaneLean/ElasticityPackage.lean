import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure ElasticityPackage where
  linearElasticModuli : Type u
  stressStrainTensor : Type v
  isotropicHookeLaw : Prop
  elasticSymmetries : Prop
  elasticConstantsMeasured : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  linearElasticModuliClosed : E.linearElasticModuli
  stressStrainTensorClosed : E.stressStrainTensor
  isotropicHookeLawClosed : E.isotropicHookeLaw
  elasticSymmetriesClosed : E.elasticSymmetries
  elasticConstantsMeasuredClosed : E.elasticConstantsMeasured

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.linearElasticModuli ∧ E.stressStrainTensor ∧ E.isotropicHookeLaw ∧
  E.elasticSymmetries ∧ E.elasticConstantsMeasured

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.linearElasticModuliClosed
    (And.intro Ev.stressStrainTensorClosed
      (And.intro Ev.isotropicHookeLawClosed
        (And.intro Ev.elasticSymmetriesClosed Ev.elasticConstantsMeasuredClosed)))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
