import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure CosmologicalModelPackage where
  scaleFactor : ℝ → ℝ
  expansionRate : ℝ → ℝ
  matterContent : Prop
  darkEnergy : Prop
  thermodynamicEquilibrium : Prop

structure CosmologicalModelEvidence (C : CosmologicalModelPackage) where
  expansionRateClosed : C.expansionRate = 73.2
  matterContentClosed : C.matterContent
  darkEnergyClosed : C.darkEnergy
  thermodynamicEquilibriumClosed : C.thermodynamicEquilibrium

def CosmologicalModelClosed (C : CosmologicalModelPackage) : Prop :=
  C.expansionRate = 73.2 ∧ C.matterContent ∧ C.darkEnergy ∧ C.thermodynamicEquilibrium

theorem cosmological_model_closed_from_evidence (C : CosmologicalModelPackage)
    (Ev : CosmologicalModelEvidence C) : CosmologicalModelClosed C := by
  exact And.intro Ev.expansionRateClosed
    (And.intro Ev.matterContentClosed
      (And.intro Ev.darkEnergyClosed Ev.thermodynamicEquilibriumClosed))

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
