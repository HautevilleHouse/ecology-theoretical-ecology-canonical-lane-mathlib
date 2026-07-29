import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure CompetitionExclusionPackage where
  speciesCount : ℕ
  resourceGrowth : ℝ → ℝ
  competitionMatrix : ℝ → ℝ → ℝ
  exclusionPrinciple : Prop
  nicheOverlap : Prop
  coexistencePossible : Prop

structure CompetitionExclusionEvidence (C : CompetitionExclusionPackage) where
  exclusionPrincipleClosed : C.exclusionPrinciple
  nicheOverlapClosed : C.nicheOverlap
  coexistencePossibleClosed : C.coexistencePossible

def CompetitionExclusionClosed (C : CompetitionExclusionPackage) : Prop :=
  C.exclusionPrinciple ∧ C.nicheOverlap ∧ C.coexistencePossible

theorem competition_exclusion_closed_from_evidence (C : CompetitionExclusionPackage)
    (E : CompetitionExclusionEvidence C) : CompetitionExclusionClosed C := by
  exact And.intro E.exclusionPrincipleClosed
    (And.intro E.nicheOverlapClosed E.coexistencePossibleClosed)

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse