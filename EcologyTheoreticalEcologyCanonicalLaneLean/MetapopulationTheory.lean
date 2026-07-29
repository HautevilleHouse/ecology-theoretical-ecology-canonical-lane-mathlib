import EcologyTheoreticalEcologyCanonicalLaneLean.CompetitiveExclusion

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure MetapopulationTheoryPackage {P : PopulationDynamicsPackage} {C : CompetitiveExclusionPackage P} where
  patchDynamics : Prop
  colonizationExtinction : Prop
  connectivity : Prop
  persistenceThreshold : Prop

structure MetapopulationTheoryEvidence {P : PopulationDynamicsPackage} {C : CompetitiveExclusionPackage P} (M : MetapopulationTheoryPackage C) where
  patchDynamicsClosed : M.patchDynamics
  colonizationExtinctionClosed : M.colonizationExtinction
  connectivityClosed : M.connectivity
  persistenceThresholdClosed : M.persistenceThreshold

def MetapopulationTheoryClosed {P : PopulationDynamicsPackage} {C : CompetitiveExclusionPackage P} (M : MetapopulationTheoryPackage C) : Prop :=
  M.patchDynamics ∧ M.colonizationExtinction ∧ M.connectivity ∧ M.persistenceThreshold

theorem metapopulation_theory_closed_from_evidence {P : PopulationDynamicsPackage} {C : CompetitiveExclusionPackage P} (M : MetapopulationTheoryPackage C) (E : MetapopulationTheoryEvidence M) : MetapopulationTheoryClosed M := by
  exact And.intro E.patchDynamicsClosed (And.intro E.colonizationExtinctionClosed (And.intro E.connectivityClosed E.persistenceThresholdClosed))

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse