import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure MetapopulationSpatialDynamicsPackage where
  patchCount : Nat
  connectivityMatrix : List (List Float)
  extinctionRates : List Float
  colonizationRates : List Float
  persistenceCondition : Prop
  metapopulationCapacity : Prop

structure MetapopulationSpatialDynamicsEvidence
    (M : MetapopulationSpatialDynamicsPackage) where
  persistenceConditionClosed : M.persistenceCondition
  metapopulationCapacityClosed : M.metapopulationCapacity

def MetapopulationSpatialDynamicsClosed (M : MetapopulationSpatialDynamicsPackage) : Prop :=
  M.persistenceCondition ∧ M.metapopulationCapacity

theorem metapopulation_spatial_dynamics_closed_from_evidence
    (M : MetapopulationSpatialDynamicsPackage)
    (E : MetapopulationSpatialDynamicsEvidence M) : MetapopulationSpatialDynamicsClosed M := by
  exact And.intro E.persistenceConditionClosed E.metapopulationCapacityClosed

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse