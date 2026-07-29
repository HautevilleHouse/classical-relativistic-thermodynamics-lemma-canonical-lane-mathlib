import canonicalLaneMathlib.AdmissibleClass
import ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean.RelativisticThermodynamicsAdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.equilibriumCondition

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse