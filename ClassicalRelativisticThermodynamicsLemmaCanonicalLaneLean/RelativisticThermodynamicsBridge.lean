import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure RelativisticThermodynamicsPackage (A : AdmissibleClass) where
  equilibriumDistribution : Prop
  entropyCurrent : Prop
  relativisticNavierStokes : Prop
  viscosityModel : Prop
  heatConductionModel : Prop

structure RelativisticThermodynamicsEvidence {A : AdmissibleClass} (R : RelativisticThermodynamicsPackage A) where
  equilibriumDistributionClosed : R.equilibriumDistribution
  entropyCurrentClosed : R.entropyCurrent
  relativisticNavierStokesClosed : R.relativisticNavierStokes
  viscosityModelClosed : R.viscosityModel
  heatConductionModelClosed : R.heatConductionModel

def RelativisticThermodynamicsClosed {A : AdmissibleClass} (R : RelativisticThermodynamicsPackage A) : Prop :=
  R.equilibriumDistribution ∧ R.entropyCurrent ∧ R.relativisticNavierStokes ∧ R.viscosityModel ∧ R.heatConductionModel

theorem relativistic_thermodynamics_closed_from_evidence {A : AdmissibleClass} (R : RelativisticThermodynamicsPackage A) (Ev : RelativisticThermodynamicsEvidence R) : RelativisticThermodynamicsClosed R := by
  exact And.intro Ev.equilibriumDistributionClosed (And.intro Ev.entropyCurrentClosed (And.intro Ev.relativisticNavierStokesClosed (And.intro Ev.viscosityModelClosed Ev.heatConductionModelClosed)))

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse