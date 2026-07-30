import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean

structure NuclearFuelCyclePackage where
  fuelFabrication : Prop
  reactorOperation : Prop
  spentFuelStorage : Prop
  reprocessing : Prop
  wasteDisposal : Prop

structure NuclearFuelCycleEvidence (P : NuclearFuelCyclePackage) where
  fuelFabricationClosed : P.fuelFabrication
  reactorOperationClosed : P.reactorOperation
  spentFuelStorageClosed : P.spentFuelStorage
  reprocessingClosed : P.reprocessing
  wasteDisposalClosed : P.wasteDisposal

def NuclearFuelCycleClosed (P : NuclearFuelCyclePackage) : Prop :=
  P.fuelFabrication ∧ P.reactorOperation ∧ P.spentFuelStorage ∧ P.reprocessing ∧ P.wasteDisposal

theorem nuclear_fuel_cycle_closed_from_evidence (P : NuclearFuelCyclePackage) (E : NuclearFuelCycleEvidence P) :
    NuclearFuelCycleClosed P := by
  exact And.intro E.fuelFabricationClosed
    (And.intro E.reactorOperationClosed
      (And.intro E.spentFuelStorageClosed
        (And.intro E.reprocessingClosed E.wasteDisposalClosed)))

end MaterialsEngineeringNuclearMaterialsFoundationCanonicalLaneLean
end HautevilleHouse