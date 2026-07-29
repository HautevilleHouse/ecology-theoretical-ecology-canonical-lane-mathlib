import EcologyTheoreticalEcologyCanonicalLaneLean.PopulationDynamics

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure CompetitiveExclusionPackage (P : PopulationDynamicsPackage) where
  nicheOverlap : Prop
  resourceLimitation : Prop
  exclusionPrinciple : Prop
  coexistenceMechanisms : Prop

structure CompetitiveExclusionEvidence {P : PopulationDynamicsPackage} (C : CompetitiveExclusionPackage P) where
  nicheOverlapClosed : C.nicheOverlap
  resourceLimitationClosed : C.resourceLimitation
  exclusionPrincipleClosed : C.exclusionPrinciple
  coexistenceMechanismsClosed : C.coexistenceMechanisms

def CompetitiveExclusionClosed {P : PopulationDynamicsPackage} (C : CompetitiveExclusionPackage P) : Prop :=
  C.nicheOverlap ∧ C.resourceLimitation ∧ C.exclusionPrinciple ∧ C.coexistenceMechanisms

theorem competitive_exclusion_closed_from_evidence {P : PopulationDynamicsPackage} (C : CompetitiveExclusionPackage P) (E : CompetitiveExclusionEvidence C) : CompetitiveExclusionClosed C := by
  exact And.intro E.nicheOverlapClosed (And.intro E.resourceLimitationClosed (And.intro E.exclusionPrincipleClosed E.coexistenceMechanismsClosed))

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse