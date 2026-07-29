import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean.SpacetimeContinuum

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure EinsteinFieldEquationsPackage (S : SpacetimeContinuumPackage) where
  stressEnergyTensor : Type u
  cosmologicalConstant : Prop
  equationForm : Prop
  initialDataSatisfied : Prop

structure EinsteinFieldEquationsEvidence {S : SpacetimeContinuumPackage} (E : EinsteinFieldEquationsPackage S) where
  stressEnergyTensorClosed : E.stressEnergyTensor
  cosmologicalConstantClosed : E.cosmologicalConstant
  equationFormClosed : E.equationForm
  initialDataSatisfiedClosed : E.initialDataSatisfied

def EinsteinFieldEquationsClosed {S : SpacetimeContinuumPackage} (E : EinsteinFieldEquationsPackage S) : Prop :=
  E.stressEnergyTensor ∧ E.cosmologicalConstant ∧ E.equationForm ∧ E.initialDataSatisfied

theorem einstein_field_equations_closed_from_evidence {S : SpacetimeContinuumPackage} (E : EinsteinFieldEquationsPackage S) (Ev : EinsteinFieldEquationsEvidence E) : EinsteinFieldEquationsClosed E := by
  exact And.intro Ev.stressEnergyTensorClosed (And.intro Ev.cosmologicalConstantClosed (And.intro Ev.equationFormClosed Ev.initialDataSatisfiedClosed))

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse