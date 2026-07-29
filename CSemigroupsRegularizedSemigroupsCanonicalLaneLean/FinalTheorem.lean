import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CSemigroupsRegularizedSemigroupsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CSemigroupsRegularizedSemigroupsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

def ConstrainedCSemigroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_c_semigroup_endgame (A : AdmissibleClass) :
    ConstrainedCSemigroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse