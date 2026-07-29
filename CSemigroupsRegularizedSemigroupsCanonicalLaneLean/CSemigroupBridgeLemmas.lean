import CSemigroupsRegularizedSemigroupsCanonicalLaneLean.CSemigroupAdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.cProperty

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.cProperty

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse