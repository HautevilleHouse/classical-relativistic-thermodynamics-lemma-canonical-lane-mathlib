import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ThermodynamicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse