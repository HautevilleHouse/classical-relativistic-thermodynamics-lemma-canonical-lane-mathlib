import ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean.ThermodynamicEntropyLemmas

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure ThermoAdmissibleFoundation (P : RelativisticThermoSpacetimePackage)
    (F : EckartFramePackage P) (C : CausalThermoPackage F) (L : EntropyLemmaPackage C) where
  spacetimeEvidence : RelativisticThermoSpacetimeEvidence P
  frameEvidence : EckartFrameEvidence F
  causalEvidence : CausalThermoEvidence C
  entropyEvidence : EntropyLemmaEvidence L

def ThermoAdmissibleFoundationClosed (A : ThermoAdmissibleFoundation) : Prop :=
  RelativisticThermoSpacetimeClosed A.spacetimeEvidence ∧
  EckartFrameClosed A.frameEvidence ∧
  CausalThermoClosed A.causalEvidence ∧
  EntropyLemmaClosed A.entropyEvidence

theorem thermo_admissible_foundation_closed_from_evidence
    (A : ThermoAdmissibleFoundation) : ThermoAdmissibleFoundationClosed A := by
  exact And.intro (relativistic_thermo_spacetime_closed_from_evidence _ A.spacetimeEvidence)
    (And.intro (eckart_frame_closed_from_evidence _ A.frameEvidence)
      (And.intro (causal_thermo_closed_from_evidence _ A.causalEvidence)
        (entropy_lemma_closed_from_evidence _ A.entropyEvidence)))

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
