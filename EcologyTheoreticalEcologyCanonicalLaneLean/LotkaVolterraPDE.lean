import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure LotkaVolterraPDEPackage where
  preyGrowthRate : ℝ
  predatorDeathRate : ℝ
  predationRate : ℝ
  conversionEfficiency : ℝ
  preyCarryingCapacity : ℝ
  initialConditions : Prop
  solutionExists : Prop
  equilibriumStability : Prop

structure LotkaVolterraPDEEvidence (L : LotkaVolterraPDEPackage) where
  initialConditionsClosed : L.initialConditions
  solutionExistsClosed : L.solutionExists
  equilibriumStabilityClosed : L.equilibriumStability

def LotkaVolterraPDEClosed (L : LotkaVolterraPDEPackage) : Prop :=
  L.initialConditions ∧ L.solutionExists ∧ L.equilibriumStability

theorem lotka_volterra_pde_closed_from_evidence (L : LotkaVolterraPDEPackage) (Ev : LotkaVolterraPDEEvidence L) :
    LotkaVolterraPDEClosed L := by
  exact And.intro Ev.initialConditionsClosed (And.intro Ev.solutionExistsClosed Ev.equilibriumStabilityClosed)

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse