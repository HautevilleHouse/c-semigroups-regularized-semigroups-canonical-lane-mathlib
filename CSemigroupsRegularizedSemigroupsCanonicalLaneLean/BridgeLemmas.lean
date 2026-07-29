import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CSemigroupsRegularizedSemigroupsCanonicalLaneLean.CSemigroupDefinition
import HautevilleHouse.CSemigroupsRegularizedSemigroupsCanonicalLaneLean.RegularizedSemigroup
import HautevilleHouse.CSemigroupsRegularizedSemigroupsCanonicalLaneLean.ResolventConvergence
import HautevilleHouse.CSemigroupsRegularizedSemigroupsCanonicalLaneLean.GeneratorEmbedding

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CSemigroupClosed (A.object : CSemigroupPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact c_semigroup_closed_from_evidence (A.object : CSemigroupPackage) (A.object : CSemigroupEvidence _)

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse