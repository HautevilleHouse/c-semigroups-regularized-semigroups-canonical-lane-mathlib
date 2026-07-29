import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure CSemigroupObject where
  carrier : Type
  semigroupOp : carrier → carrier → carrier
  regularized : Prop
  cProperty : Prop

structure AdmissibleClass where
  object : CSemigroupObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.cProperty ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse