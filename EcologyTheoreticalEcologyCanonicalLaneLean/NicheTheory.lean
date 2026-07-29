import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure NicheTheoryPackage where
  resourceTypes : Type u
  speciesRequirements : species -> resourceTypes -> ℝ
  resourceAvailability : resourceTypes -> ℝ
  nicheOverlap : Prop
  limitingSimilarity : Prop
  coexistenceCondition : Prop

structure NicheTheoryEvidence (N : NicheTheoryPackage) where
  nicheOverlapClosed : N.nicheOverlap
  limitingSimilarityClosed : N.limitingSimilarity
  coexistenceConditionClosed : N.coexistenceCondition

def NicheTheoryClosed (N : NicheTheoryPackage) : Prop :=
  N.nicheOverlap ∧ N.limitingSimilarity ∧ N.coexistenceCondition

theorem niche_theory_closed_from_evidence (N : NicheTheoryPackage) (Ev : NicheTheoryEvidence N) :
    NicheTheoryClosed N := by
  exact And.intro Ev.nicheOverlapClosed (And.intro Ev.limitingSimilarityClosed Ev.coexistenceConditionClosed)

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse