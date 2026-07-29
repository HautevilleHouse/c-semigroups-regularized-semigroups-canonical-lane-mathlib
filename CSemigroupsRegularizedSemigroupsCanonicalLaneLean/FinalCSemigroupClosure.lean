import CSemigroupsRegularizedSemigroupsCanonicalLaneLean.CSemigroupGateLemmas

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

def ConstrainedCSemigroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_csemigroup_endgame (A : AdmissibleClass) : ConstrainedCSemigroupClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse