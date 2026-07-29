import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure MetapopulationDynamicsPackage where
  patchCount : ℕ
  colonizationRate : ℝ → ℝ → ℝ
  extinctionRate : ℝ → ℝ → ℝ
  connectivityMatrix : ℝ → ℝ → ℝ
  metapopulationCapacity : Prop
  patchDynamics : Prop

structure MetapopulationDynamicsEvidence (M : MetapopulationDynamicsPackage) where
  metapopulationCapacityClosed : M.metapopulationCapacity
  patchDynamicsClosed : M.patchDynamics

def MetapopulationDynamicsClosed (M : MetapopulationDynamicsPackage) : Prop :=
  M.metapopulationCapacity ∧ M.patchDynamics

theorem metapopulation_dynamics_closed_from_evidence (M : MetapopulationDynamicsPackage)
    (E : MetapopulationDynamicsEvidence M) : MetapopulationDynamicsClosed M := by
  exact And.intro E.metapopulationCapacityClosed E.patchDynamicsClosed

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse