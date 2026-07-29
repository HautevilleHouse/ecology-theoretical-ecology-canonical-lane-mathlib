import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure PredatorPreyStabilityPackage where
  preyGrowthRate : Float
  predationRate : Float
  predatorMortality : Float
  conversionEfficiency : Float
  equilibriumExists : Prop
  limitCycleConditions : Prop

structure PredatorPreyStabilityEvidence (P : PredatorPreyStabilityPackage) where
  equilibriumExistsClosed : P.equilibriumExists
  limitCycleConditionsClosed : P.limitCycleConditions

def PredatorPreyStabilityClosed (P : PredatorPreyStabilityPackage) : Prop :=
  P.equilibriumExists ∧ P.limitCycleConditions

theorem predator_prey_stability_closed_from_evidence (P : PredatorPreyStabilityPackage)
    (E : PredatorPreyStabilityEvidence P) : PredatorPreyStabilityClosed P := by
  exact And.intro E.equilibriumExistsClosed E.limitCycleConditionsClosed

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse