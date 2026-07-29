import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure GravitationalWavesPackage {E : EinsteinFieldEquationsPackage} where
  perturbationMetric : Type u
  waveEquationHeld : Prop
  polarizationStates : Prop
  energyFluxDefined : Prop

structure GravitationalWavesEvidence {E : EinsteinFieldEquationsPackage}
    (G : GravitationalWavesPackage E) where
  waveEquationHeldClosed : G.waveEquationHeld
  polarizationStatesClosed : G.polarizationStates
  energyFluxDefinedClosed : G.energyFluxDefined

def GravitationalWavesClosed {E : EinsteinFieldEquationsPackage}
    (G : GravitationalWavesPackage E) : Prop :=
  G.waveEquationHeld ∧ G.polarizationStates ∧ G.energyFluxDefined

theorem gravitational_waves_closed_from_evidence {E : EinsteinFieldEquationsPackage}
    (G : GravitationalWavesPackage E) (Ev : GravitationalWavesEvidence G) :
    GravitationalWavesClosed G :=
  And.intro Ev.waveEquationHeldClosed
    (And.intro Ev.polarizationStatesClosed Ev.energyFluxDefinedClosed)

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse