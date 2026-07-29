import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure PredatorPreyPackage where
  preyGrowthRate : ℝ → ℝ → ℝ
  predationRate : ℝ → ℝ → ℝ
  predatorDeathRate : ℝ → ℝ → ℝ
  conversionEfficiency : ℝ
  coexistenceCondition : Prop
  limitCycleExistence : Prop

structure PredatorPreyEvidence (P : PredatorPreyPackage) where
  coexistenceConditionClosed : P.coexistenceCondition
  limitCycleExistenceClosed : P.limitCycleExistence

def PredatorPreyClosed (P : PredatorPreyPackage) : Prop :=
  P.coexistenceCondition ∧ P.limitCycleExistence

theorem predator_prey_closed_from_evidence (P : PredatorPreyPackage)
    (E : PredatorPreyEvidence P) : PredatorPreyClosed P := by
  exact And.intro E.coexistenceConditionClosed E.limitCycleExistenceClosed

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse