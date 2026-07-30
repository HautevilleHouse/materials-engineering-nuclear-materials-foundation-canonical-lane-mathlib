import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure IrradiationField where
  neutronFlux : Float
  energySpectrum : Float → Float
  dpaRate : Float

structure IrradiationEffectsPackage (I : IrradiationField) where
  displacementCascadeModeled : Prop
  defectEvolutionSimulated : Prop
  swellingPrediction : Prop
  embrittlementAssessment : Prop

structure IrradiationEffectsEvidence {I : IrradiationField} (P : IrradiationEffectsPackage I) where
  displacementCascadeModeledClosed : P.displacementCascadeModeled
  defectEvolutionSimulatedClosed : P.defectEvolutionSimulated
  swellingPredictionClosed : P.swellingPrediction
  embrittlementAssessmentClosed : P.embrittlementAssessment

def IrradiationEffectsClosed {I : IrradiationField} (P : IrradiationEffectsPackage I) : Prop :=
  P.displacementCascadeModeled ∧ P.defectEvolutionSimulated ∧ P.swellingPrediction ∧ P.embrittlementAssessment

theorem irradiation_effects_closed_from_evidence {I : IrradiationField} (P : IrradiationEffectsPackage I) (E : IrradiationEffectsEvidence P) : IrradiationEffectsClosed P := by
  exact And.intro E.displacementCascadeModeledClosed (And.intro E.defectEvolutionSimulatedClosed (And.intro E.swellingPredictionClosed E.embrittlementAssessmentClosed))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse