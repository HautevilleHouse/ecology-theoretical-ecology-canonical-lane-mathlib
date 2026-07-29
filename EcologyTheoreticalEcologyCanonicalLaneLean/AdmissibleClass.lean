import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure AdmissibleClass where
  object : EcologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EcologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse