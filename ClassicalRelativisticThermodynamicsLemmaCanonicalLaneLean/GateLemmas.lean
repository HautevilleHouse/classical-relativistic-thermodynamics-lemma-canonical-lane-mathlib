import canonicalLaneMathlib.AdmissibleClass
import ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean.RelativisticThermodynamicsAdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse