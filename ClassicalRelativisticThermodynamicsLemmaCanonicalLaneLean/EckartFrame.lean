import ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean.RelativisticThermoSpacetime

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure EckartFramePackage {P : RelativisticThermoSpacetimePackage} where
  fourVelocity : Type u
  projectionOperator : Type v
  heatFluxVector : Type w
  viscousStressTensor : Type x
  frameDefined : Prop
  constitutiveRelations : Prop
  entropyProductionNonnegative : Prop

structure EckartFrameEvidence {P : RelativisticThermoSpacetimePackage}
    (F : EckartFramePackage P) where
  frameDefinedClosed : F.frameDefined
  constitutiveRelationsClosed : F.constitutiveRelations
  entropyProductionNonnegativeClosed : F.entropyProductionNonnegative

def EckartFrameClosed {P : RelativisticThermoSpacetimePackage}
    (F : EckartFramePackage P) : Prop :=
  F.frameDefined ∧ F.constitutiveRelations ∧ F.entropyProductionNonnegative

theorem eckart_frame_closed_from_evidence
    {P : RelativisticThermoSpacetimePackage} (F : EckartFramePackage P)
    (E : EckartFrameEvidence F) : EckartFrameClosed F := by
  exact And.intro E.frameDefinedClosed
    (And.intro E.constitutiveRelationsClosed E.entropyProductionNonnegativeClosed)

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
