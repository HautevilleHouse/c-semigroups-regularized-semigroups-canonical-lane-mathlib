import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure AdmissibleClass where
  object : CSemigroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CSemigroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse
