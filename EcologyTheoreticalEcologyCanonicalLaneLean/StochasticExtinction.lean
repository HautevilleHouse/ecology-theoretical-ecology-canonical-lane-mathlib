import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure StochasticExtinctionPackage where
  populationSize : Nat
  birthRate : Float
  deathRate : Float
  environmentalStochasticity : Float
  extinctionProbability : Prop
  criticalThreshold : Prop

structure StochasticExtinctionEvidence (S : StochasticExtinctionPackage) where
  extinctionProbabilityClosed : S.extinctionProbability
  criticalThresholdClosed : S.criticalThreshold

def StochasticExtinctionClosed (S : StochasticExtinctionPackage) : Prop :=
  S.extinctionProbability ∧ S.criticalThreshold

theorem stochastic_extinction_closed_from_evidence (S : StochasticExtinctionPackage)
    (E : StochasticExtinctionEvidence S) : StochasticExtinctionClosed S := by
  exact And.intro E.extinctionProbabilityClosed E.criticalThresholdClosed

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse