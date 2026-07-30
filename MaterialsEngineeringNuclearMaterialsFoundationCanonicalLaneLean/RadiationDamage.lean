import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure RadiationDamagePackage where
  displacementCascade : Prop
  defectFormation : Prop
  irradiationHardening : Prop
  voidSwelling : Prop
  amorphization : Prop

structure RadiationDamageEvidence (P : RadiationDamagePackage) where
  displacementCascadeClosed : P.displacementCascade
  defectFormationClosed : P.defectFormation
  irradiationHardeningClosed : P.irradiationHardening
  voidSwellingClosed : P.voidSwelling
  amorphizationClosed : P.amorphization

def RadiationDamageClosed (P : RadiationDamagePackage) : Prop :=
  P.displacementCascade ∧ P.defectFormation ∧ P.irradiationHardening ∧ P.voidSwelling ∧ P.amorphization

theorem radiation_damage_closed_from_evidence (P : RadiationDamagePackage) (E : RadiationDamageEvidence P) :
    RadiationDamageClosed P := by
  exact And.intro E.displacementCascadeClosed
    (And.intro E.defectFormationClosed
      (And.intro E.irradiationHardeningClosed
        (And.intro E.voidSwellingClosed E.amorphizationClosed)))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse