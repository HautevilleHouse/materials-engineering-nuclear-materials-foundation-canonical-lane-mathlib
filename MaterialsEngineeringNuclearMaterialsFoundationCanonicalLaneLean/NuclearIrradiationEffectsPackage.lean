import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure NuclearIrradiationEffectsPackage where
  displacementPerAtom : Type u
  neutronFlux : Type v
  irradiationDamage : Type w
  swelling : Type x
  hardening : Type y
  embrittlement : Type z
  voidSwelling : Prop
  irradiationCreep : Prop
  amorphization : Prop

structure NuclearIrradiationEffectsEvidence (N : NuclearIrradiationEffectsPackage) where
  voidSwellingClosed : N.voidSwelling
  irradiationCreepClosed : N.irradiationCreep
  amorphizationClosed : N.amorphization

def NuclearIrradiationEffectsClosed (N : NuclearIrradiationEffectsPackage) : Prop :=
  N.voidSwelling ∧ N.irradiationCreep ∧ N.amorphization

theorem nuclear_irradiation_effects_closed_from_evidence
    (N : NuclearIrradiationEffectsPackage) (E : NuclearIrradiationEffectsEvidence N) :
    NuclearIrradiationEffectsClosed N := by
  exact And.intro E.voidSwellingClosed (And.intro E.irradiationCreepClosed E.amorphizationClosed)

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse