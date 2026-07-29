import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure RelativisticThermodynamicsPackage where
  temperatureField : Type u
  entropyCurrent : Type v
  thermodynamicEquilibrium : Prop
  carathéodoryPrinciple : Prop
  secondLawCovariant : Prop

structure RelativisticThermodynamicsEvidence (T : RelativisticThermodynamicsPackage) where
  thermodynamicEquilibriumClosed : T.thermodynamicEquilibrium
  carathéodoryPrincipleClosed : T.carathéodoryPrinciple
  secondLawCovariantClosed : T.secondLawCovariant

def RelativisticThermodynamicsClosed (T : RelativisticThermodynamicsPackage) : Prop :=
  T.thermodynamicEquilibrium ∧ T.carathéodoryPrinciple ∧ T.secondLawCovariant

theorem relativistic_thermodynamics_closed_from_evidence (T : RelativisticThermodynamicsPackage)
    (Ev : RelativisticThermodynamicsEvidence T) : RelativisticThermodynamicsClosed T :=
  And.intro Ev.thermodynamicEquilibriumClosed
    (And.intro Ev.carathéodoryPrincipleClosed Ev.secondLawCovariantClosed)

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse