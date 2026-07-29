import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean

structure SpacetimeEvent where
  coordinates : ℝ × ℝ × ℝ × ℝ
  topology : TopologicalSpace (ℝ × ℝ × ℝ × ℝ) := by infer_instance

structure RelativisticThermodynamicsObject where
  event : SpacetimeEvent
  stressEnergyTensor : ℝ×ℝ×ℝ×ℝ → ℝ×ℝ×ℝ×ℝ
  entropyCurrent : ℝ×ℝ×ℝ×ℝ → ℝ×ℝ×ℝ×ℝ
  temperatureField : ℝ×ℝ×ℝ×ℝ → ℝ
  equilibriumCondition : Prop
  structurePreserving : Prop
  conclusion : equilibriumCondition

structure RelativisticThermodynamicsAdmittedObject where
  object : RelativisticThermodynamicsObject

end ClassicalRelativisticThermodynamicsLemmaCanonicalLaneLean
end HautevilleHouse