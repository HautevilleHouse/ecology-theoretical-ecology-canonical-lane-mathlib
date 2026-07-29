import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure CommunityAssemblyPackage where
  nicheDynamics : Prop
  neutralProcesses : Prop
  coexistenceMechanisms : Prop
  biodiversityPatterns : Prop

structure CommunityAssemblyEvidence (C : CommunityAssemblyPackage) where
  nicheDynamicsClosed : C.nicheDynamics
  neutralProcessesClosed : C.neutralProcesses
  coexistenceMechanismsClosed : C.coexistenceMechanisms
  biodiversityPatternsClosed : C.biodiversityPatterns

def CommunityAssemblyClosed (C : CommunityAssemblyPackage) : Prop :=
  C.nicheDynamics ∧ C.neutralProcesses ∧ C.coexistenceMechanisms ∧ C.biodiversityPatterns

theorem community_assembly_closed_from_evidence (C : CommunityAssemblyPackage) (E : CommunityAssemblyEvidence C) : CommunityAssemblyClosed C := by
  exact And.intro E.nicheDynamicsClosed (And.intro E.neutralProcessesClosed (And.intro E.coexistenceMechanismsClosed E.biodiversityPatternsClosed))

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse