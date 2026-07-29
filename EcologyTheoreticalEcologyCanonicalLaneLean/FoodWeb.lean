import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure FoodWebPackage where
  speciesList : Type u
  trophicLinks : speciesList -> speciesList -> ℝ
  energyFlow : speciesList -> ℝ
  stabilityCondition : Prop
  biodiversityIndex : ℝ

structure FoodWebEvidence (F : FoodWebPackage) where
  stabilityConditionClosed : F.stabilityCondition
  biodiversityIndexPositive : F.biodiversityIndex > 0

def FoodWebClosed (F : FoodWebPackage) : Prop :=
  F.stabilityCondition ∧ F.biodiversityIndex > 0

theorem food_web_closed_from_evidence (F : FoodWebPackage) (Ev : FoodWebEvidence F) :
    FoodWebClosed F := by
  exact And.intro Ev.stabilityConditionClosed Ev.biodiversityIndexPositive

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse