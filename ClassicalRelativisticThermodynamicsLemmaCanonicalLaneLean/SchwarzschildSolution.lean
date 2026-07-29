import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure SchwarzschildSolutionPackage {E : EinsteinFieldEquationsPackage} where
  massParameter : ℝ
  eventHorizonRadius : ℝ
  exteriorSolutionValid : Prop
  interiorSolutionValid : Prop

structure SchwarzschildSolutionEvidence {E : EinsteinFieldEquationsPackage}
    (S : SchwarzschildSolutionPackage E) where
  exteriorSolutionValidClosed : S.exteriorSolutionValid
  interiorSolutionValidClosed : S.interiorSolutionValid

def SchwarzschildSolutionClosed {E : EinsteinFieldEquationsPackage}
    (S : SchwarzschildSolutionPackage E) : Prop :=
  S.exteriorSolutionValid ∧ S.interiorSolutionValid

theorem schwarzschild_solution_closed_from_evidence {E : EinsteinFieldEquationsPackage}
    (S : SchwarzschildSolutionPackage E) (Ev : SchwarzschildSolutionEvidence S) :
    SchwarzschildSolutionClosed S :=
  And.intro Ev.exteriorSolutionValidClosed Ev.interiorSolutionValidClosed

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse