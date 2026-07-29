import HautevilleHouse.ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure TheoremStatement where
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  carriedRemainder : String

theorem theorem_statement_verified (A : AdmissibleClass) : ConstrainedThermodynamicsClosure A :=
  constrained_thermodynamics_endgame A

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse