import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure EvolutionaryDynamicsPackage where
  traitSpace : Type u
  fitnessFunction : traitSpace -> ℝ
  mutationRate : traitSpace -> ℝ
  selectionGradient : Prop
  evolutionaryStabilityCondition : Prop

structure EvolutionaryDynamicsEvidence (E : EvolutionaryDynamicsPackage) where
  selectionGradientClosed : E.selectionGradient
  evolutionaryStabilityConditionClosed : E.evolutionaryStabilityCondition

def EvolutionaryDynamicsClosed (E : EvolutionaryDynamicsPackage) : Prop :=
  E.selectionGradient ∧ E.evolutionaryStabilityCondition

theorem evolutionary_dynamics_closed_from_evidence (E : EvolutionaryDynamicsPackage) (Ev : EvolutionaryDynamicsEvidence E) :
    EvolutionaryDynamicsClosed E := by
  exact And.intro Ev.selectionGradientClosed Ev.evolutionaryStabilityConditionClosed

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse