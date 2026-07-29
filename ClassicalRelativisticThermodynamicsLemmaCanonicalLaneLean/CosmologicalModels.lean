import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure CosmologicalModelsPackage {E : EinsteinFieldEquationsPackage}
    {T : RelativisticThermodynamicsPackage} where
  friedmannEquations : Prop
  homogeneityIsotropy : Prop
  equationOfState : Prop
  redshiftRelation : Prop

structure CosmologicalModelsEvidence {E : EinsteinFieldEquationsPackage}
    {T : RelativisticThermodynamicsPackage} (C : CosmologicalModelsPackage E T) where
  friedmannEquationsClosed : C.friedmannEquations
  homogeneityIsotropyClosed : C.homogeneityIsotropy
  equationOfStateClosed : C.equationOfState
  redshiftRelationClosed : C.redshiftRelation

def CosmologicalModelsClosed {E : EinsteinFieldEquationsPackage}
    {T : RelativisticThermodynamicsPackage} (C : CosmologicalModelsPackage E T) : Prop :=
  C.friedmannEquations ∧ C.homogeneityIsotropy ∧ C.equationOfState ∧ C.redshiftRelation

theorem cosmological_models_closed_from_evidence {E : EinsteinFieldEquationsPackage}
    {T : RelativisticThermodynamicsPackage} (C : CosmologicalModelsPackage E T)
    (Ev : CosmologicalModelsEvidence C) : CosmologicalModelsClosed C :=
  And.intro Ev.friedmannEquationsClosed
    (And.intro Ev.homogeneityIsotropyClosed
      (And.intro Ev.equationOfStateClosed Ev.redshiftRelationClosed))

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse