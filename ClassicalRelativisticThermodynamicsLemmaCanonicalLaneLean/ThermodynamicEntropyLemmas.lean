import ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean.CausalThermodynamics

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure EntropyLemmaPackage {P : RelativisticThermoSpacetimePackage}
    {F : EckartFramePackage P} {C : CausalThermoPackage F} where
  entropyCurrentDensity : Type u
  entropyBalanceEquation : Prop
  localEquilibriumHypothesis : Prop
  monotonicityAssertion : Prop

structure EntropyLemmaEvidence {P : RelativisticThermoSpacetimePackage}
    {F : EckartFramePackage P} {C : CausalThermoPackage F}
    (L : EntropyLemmaPackage C) where
  entropyBalanceEquationClosed : L.entropyBalanceEquation
  localEquilibriumHypothesisClosed : L.localEquilibriumHypothesis
  monotonicityAssertionClosed : L.monotonicityAssertion

def EntropyLemmaClosed {P : RelativisticThermoSpacetimePackage}
    {F : EckartFramePackage P} {C : CausalThermoPackage F}
    (L : EntropyLemmaPackage C) : Prop :=
  L.entropyBalanceEquation ∧ L.localEquilibriumHypothesis ∧ L.monotonicityAssertion

theorem entropy_lemma_closed_from_evidence
    {P : RelativisticThermoSpacetimePackage}
    {F : EckartFramePackage P} {C : CausalThermoPackage F}
    (L : EntropyLemmaPackage C) (E : EntropyLemmaEvidence L) : EntropyLemmaClosed L := by
  exact And.intro E.entropyBalanceEquationClosed
    (And.intro E.localEquilibriumHypothesisClosed E.monotonicityAssertionClosed)

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
