import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure IrradiationDamagePackage where
  displacementDamage : Prop
  defectFormation : Prop
  amorphizationThreshold : Prop
  swellingRegime : Prop
  heliumProductionRate : Prop

structure IrradiationDamageEvidence (I : IrradiationDamagePackage) where
  displacementDamageClosed : I.displacementDamage
  defectFormationClosed : I.defectFormation
  amorphizationThresholdClosed : I.amorphizationThreshold
  swellingRegimeClosed : I.swellingRegime
  heliumProductionRateClosed : I.heliumProductionRate

def IrradiationDamageClosed (I : IrradiationDamagePackage) : Prop :=
  I.displacementDamage ∧ I.defectFormation ∧ I.amorphizationThreshold ∧
  I.swellingRegime ∧ I.heliumProductionRate

theorem irradiation_damage_closed_from_evidence (I : IrradiationDamagePackage) (E : IrradiationDamageEvidence I) :
    IrradiationDamageClosed I := by
  exact And.intro E.displacementDamageClosed
    (And.intro E.defectFormationClosed
      (And.intro E.amorphizationThresholdClosed
        (And.intro E.swellingRegimeClosed E.heliumProductionRateClosed)))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
