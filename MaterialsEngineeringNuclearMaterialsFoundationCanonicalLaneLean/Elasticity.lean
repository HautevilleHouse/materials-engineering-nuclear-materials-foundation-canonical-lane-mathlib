import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Prop
  strainTensor : Prop
  hookesLaw : Prop
  elasticModuli : Prop
  isotropyCondition : Prop

structure ElasticityEvidence (P : ElasticityPackage) where
  stressTensorClosed : P.stressTensor
  strainTensorClosed : P.strainTensor
  hookesLawClosed : P.hookesLaw
  elasticModuliClosed : P.elasticModuli
  isotropyConditionClosed : P.isotropyCondition

def ElasticityClosed (P : ElasticityPackage) : Prop :=
  P.stressTensor ∧ P.strainTensor ∧ P.hookesLaw ∧ P.elasticModuli ∧ P.isotropyCondition

theorem elasticity_closed_from_evidence (P : ElasticityPackage) (E : ElasticityEvidence P) :
    ElasticityClosed P := by
  exact And.intro E.stressTensorClosed
    (And.intro E.strainTensorClosed
      (And.intro E.hookesLawClosed
        (And.intro E.elasticModuliClosed E.isotropyConditionClosed)))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse