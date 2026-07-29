import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EcologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse