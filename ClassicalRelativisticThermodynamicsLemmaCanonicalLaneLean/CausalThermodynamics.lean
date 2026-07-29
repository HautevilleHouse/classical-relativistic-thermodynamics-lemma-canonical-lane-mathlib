import ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean.EckartFrame

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure CausalThermoPackage {P : RelativisticThermoSpacetimePackage}
    {F : EckartFramePackage P} where
  relaxationTimes : Type u
  causalityCondition : Prop
  hyperbolicityEstablished : Prop
  stabilityResult : Prop

structure CausalThermoEvidence {P : RelativisticThermoSpacetimePackage}
    {F : EckartFramePackage P} (C : CausalThermoPackage F) where
  causalityConditionClosed : C.causalityCondition
  hyperbolicityEstablishedClosed : C.hyperbolicityEstablished
  stabilityResultClosed : C.stabilityResult

def CausalThermoClosed {P : RelativisticThermoSpacetimePackage}
    {F : EckartFramePackage P} (C : CausalThermoPackage F) : Prop :=
  C.causalityCondition ∧ C.hyperbolicityEstablished ∧ C.stabilityResult

theorem causal_thermo_closed_from_evidence
    {P : RelativisticThermoSpacetimePackage}
    {F : EckartFramePackage P} (C : CausalThermoPackage F)
    (E : CausalThermoEvidence C) : CausalThermoClosed C := by
  exact And.intro E.causalityConditionClosed
    (And.intro E.hyperbolicityEstablishedClosed E.stabilityResultClosed)

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
