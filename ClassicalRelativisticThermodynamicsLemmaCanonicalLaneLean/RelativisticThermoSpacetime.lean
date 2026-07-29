import ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure RelativisticThermoSpacetimePackage where
  spacetime : Type u
  topology : TopologicalSpace spacetime
  metric : Type v
  energyMomentumTensor : Type w
  entropyFourVector : Type x
  temperatureScalar : Type y
  smoothLorentzian : Prop
  metricSmooth : Prop
  stressEnergyLawful : Prop
  entropyClosure : Prop

structure RelativisticThermoSpacetimeEvidence (P : RelativisticThermoSpacetimePackage) where
  smoothLorentzianClosed : P.smoothLorentzian
  metricSmoothClosed : P.metricSmooth
  stressEnergyLawfulClosed : P.stressEnergyLawful
  entropyClosureClosed : P.entropyClosure

def RelativisticThermoSpacetimeClosed (P : RelativisticThermoSpacetimePackage) : Prop :=
  P.smoothLorentzian ∧ P.metricSmooth ∧ P.stressEnergyLawful ∧ P.entropyClosure

theorem relativistic_thermo_spacetime_closed_from_evidence
    (P : RelativisticThermoSpacetimePackage)
    (E : RelativisticThermoSpacetimeEvidence P) : RelativisticThermoSpacetimeClosed P := by
  exact And.intro E.smoothLorentzianClosed
    (And.intro E.metricSmoothClosed
      (And.intro E.stressEnergyLawfulClosed E.entropyClosureClosed))

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
