import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure ResourceCompetitionPackage where
  resourceTypes : Nat
  consumerCount : Nat
  consumerPreferences : List (List Float)
  resourceSupplyRates : List Float
  coexistenceCondition : Prop
  limitingSimilarity : Prop

structure ResourceCompetitionEvidence (R : ResourceCompetitionPackage) where
  coexistenceConditionClosed : R.coexistenceCondition
  limitingSimilarityClosed : R.limitingSimilarity

def ResourceCompetitionClosed (R : ResourceCompetitionPackage) : Prop :=
  R.coexistenceCondition ∧ R.limitingSimilarity

theorem resource_competition_closed_from_evidence (R : ResourceCompetitionPackage)
    (E : ResourceCompetitionEvidence R) : ResourceCompetitionClosed R := by
  exact And.intro E.coexistenceConditionClosed E.limitingSimilarityClosed

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse