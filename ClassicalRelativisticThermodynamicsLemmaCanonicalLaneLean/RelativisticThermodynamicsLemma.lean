import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean.StressEnergyTensor

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure RelativisticThermodynamicsLemmaPackage {S : SpacetimeContinuumPackage} {E : EinsteinFieldEquationsPackage S} {T : StressEnergyTensorPackage E} where
  equilibriumCondition : Prop
  entropyCurrent : Type u
  secondLaw : Prop
  lemmaStatement : Prop

structure RelativisticThermodynamicsLemmaEvidence {S : SpacetimeContinuumPackage} {E : EinsteinFieldEquationsPackage S} {T : StressEnergyTensorPackage E} (L : RelativisticThermodynamicsLemmaPackage T) where
  equilibriumConditionClosed : L.equilibriumCondition
  entropyCurrentClosed : L.entropyCurrent
  secondLawClosed : L.secondLaw
  lemmaStatementClosed : L.lemmaStatement

def RelativisticThermodynamicsLemmaClosed {S : SpacetimeContinuumPackage} {E : EinsteinFieldEquationsPackage S} {T : StressEnergyTensorPackage E} (L : RelativisticThermodynamicsLemmaPackage T) : Prop :=
  L.equilibriumCondition ∧ L.entropyCurrent ∧ L.secondLaw ∧ L.lemmaStatement

theorem relativistic_thermodynamics_lemma_closed_from_evidence {S : SpacetimeContinuumPackage} {E : EinsteinFieldEquationsPackage S} {T : StressEnergyTensorPackage E} (L : RelativisticThermodynamicsLemmaPackage T) (Ev : RelativisticThermodynamicsLemmaEvidence L) : RelativisticThermodynamicsLemmaClosed L := by
  exact And.intro Ev.equilibriumConditionClosed (And.intro Ev.entropyCurrentClosed (And.intro Ev.secondLawClosed Ev.lemmaStatementClosed))

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse