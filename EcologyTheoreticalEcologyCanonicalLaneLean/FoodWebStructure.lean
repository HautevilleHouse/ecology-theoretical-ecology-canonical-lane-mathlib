import EcologyTheoreticalEcologyCanonicalLaneLean.EcosystemStability

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure FoodWebStructurePackage {P : PopulationDynamicsPackage} {C : CompetitiveExclusionPackage P} {M : MetapopulationTheoryPackage C} {E : EcosystemStabilityPackage M} where
  trophicLevels : Prop
  connectance : Prop
  foodWebStability : Prop
  cascadingExtinction : Prop

structure FoodWebStructureEvidence {P : PopulationDynamicsPackage} {C : CompetitiveExclusionPackage P} {M : MetapopulationTheoryPackage C} {E : EcosystemStabilityPackage M} (F : FoodWebStructurePackage E) where
  trophicLevelsClosed : F.trophicLevels
  connectanceClosed : F.connectance
  foodWebStabilityClosed : F.foodWebStability
  cascadingExtinctionClosed : F.cascadingExtinction

def FoodWebStructureClosed {P : PopulationDynamicsPackage} {C : CompetitiveExclusionPackage P} {M : MetapopulationTheoryPackage C} {E : EcosystemStabilityPackage M} (F : FoodWebStructurePackage E) : Prop :=
  F.trophicLevels ∧ F.connectance ∧ F.foodWebStability ∧ F.cascadingExtinction

theorem food_web_structure_closed_from_evidence {P : PopulationDynamicsPackage} {C : CompetitiveExclusionPackage P} {M : MetapopulationTheoryPackage C} {E : EcosystemStabilityPackage M} (F : FoodWebStructurePackage E) (Ev : FoodWebStructureEvidence F) : FoodWebStructureClosed F := by
  exact And.intro Ev.trophicLevelsClosed (And.intro Ev.connectanceClosed (And.intro Ev.foodWebStabilityClosed Ev.cascadingExtinctionClosed))

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse