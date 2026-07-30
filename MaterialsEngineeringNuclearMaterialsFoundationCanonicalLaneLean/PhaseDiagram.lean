import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  thermodynamicPhases : Prop
  phaseBoundaries : Prop
  triplePoint : Prop
  criticalPoint : Prop
  gibbsPhaseRule : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  thermodynamicPhasesClosed : P.thermodynamicPhases
  phaseBoundariesClosed : P.phaseBoundaries
  triplePointClosed : P.triplePoint
  criticalPointClosed : P.criticalPoint
  gibbsPhaseRuleClosed : P.gibbsPhaseRule

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.thermodynamicPhases ∧ P.phaseBoundaries ∧ P.triplePoint ∧ P.criticalPoint ∧ P.gibbsPhaseRule

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.thermodynamicPhasesClosed
    (And.intro E.phaseBoundariesClosed
      (And.intro E.triplePointClosed
        (And.intro E.criticalPointClosed E.gibbsPhaseRuleClosed)))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse