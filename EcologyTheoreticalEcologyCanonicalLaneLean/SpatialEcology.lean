import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure SpatialEcologyPackage where
  dispersalRates : Prop
  habitatFragmentation : Prop
  metapopulationDynamics : Prop
  landscapeConnectivity : Prop

structure SpatialEcologyEvidence (S : SpatialEcologyPackage) where
  dispersalRatesClosed : S.dispersalRates
  habitatFragmentationClosed : S.habitatFragmentation
  metapopulationDynamicsClosed : S.metapopulationDynamics
  landscapeConnectivityClosed : S.landscapeConnectivity

def SpatialEcologyClosed (S : SpatialEcologyPackage) : Prop :=
  S.dispersalRates ∧ S.habitatFragmentation ∧ S.metapopulationDynamics ∧ S.landscapeConnectivity

theorem spatial_ecology_closed_from_evidence (S : SpatialEcologyPackage) (E : SpatialEcologyEvidence S) : SpatialEcologyClosed S := by
  exact And.intro E.dispersalRatesClosed (And.intro E.habitatFragmentationClosed (And.intro E.metapopulationDynamicsClosed E.landscapeConnectivityClosed))

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse