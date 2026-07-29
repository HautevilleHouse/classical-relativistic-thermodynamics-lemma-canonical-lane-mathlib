import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean.EinsteinFieldEquations

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure StressEnergyTensorPackage {S : SpacetimeContinuumPackage} {E : EinsteinFieldEquationsPackage S} where
  energyDensity : Prop
  pressure : Prop
  heatFlux : Prop
  anisotropicStress : Prop
  conservationLaw : Prop

structure StressEnergyTensorEvidence {S : SpacetimeContinuumPackage} {E : EinsteinFieldEquationsPackage S} (T : StressEnergyTensorPackage E) where
  energyDensityClosed : T.energyDensity
  pressureClosed : T.pressure
  heatFluxClosed : T.heatFlux
  anisotropicStressClosed : T.anisotropicStress
  conservationLawClosed : T.conservationLaw

def StressEnergyTensorClosed {S : SpacetimeContinuumPackage} {E : EinsteinFieldEquationsPackage S} (T : StressEnergyTensorPackage E) : Prop :=
  T.energyDensity ∧ T.pressure ∧ T.heatFlux ∧ T.anisotropicStress ∧ T.conservationLaw

theorem stress_energy_tensor_closed_from_evidence {S : SpacetimeContinuumPackage} {E : EinsteinFieldEquationsPackage S} (T : StressEnergyTensorPackage E) (Ev : StressEnergyTensorEvidence T) : StressEnergyTensorClosed T := by
  exact And.intro Ev.energyDensityClosed (And.intro Ev.pressureClosed (And.intro Ev.heatFluxClosed (And.intro Ev.anisotropicStressClosed Ev.conservationLawClosed)))

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse