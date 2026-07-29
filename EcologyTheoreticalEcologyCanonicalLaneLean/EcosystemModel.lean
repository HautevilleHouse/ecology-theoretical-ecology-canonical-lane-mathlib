import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure EcosystemPackage where
  speciesSet : Type u
  interactionMatrix : speciesSet -> speciesSet -> ℝ
  growthRates : speciesSet -> ℝ
  carryingCapacities : speciesSet -> ℝ
  stabilityCondition : Prop
  coexistenceCondition : Prop

structure EcosystemEvidence (E : EcosystemPackage) where
  stabilityConditionClosed : E.stabilityCondition
  coexistenceConditionClosed : E.coexistenceCondition

def EcosystemClosed (E : EcosystemPackage) : Prop :=
  E.stabilityCondition ∧ E.coexistenceCondition

theorem ecosystem_closed_from_evidence (E : EcosystemPackage) (Ev : EcosystemEvidence E) :
    EcosystemClosed E := by
  exact And.intro Ev.stabilityConditionClosed Ev.coexistenceConditionClosed

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse