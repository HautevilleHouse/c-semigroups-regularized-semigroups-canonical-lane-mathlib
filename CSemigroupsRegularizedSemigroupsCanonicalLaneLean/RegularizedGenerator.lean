import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure RegularizedGeneratorPackage where
  space : Type u
  norm : space → ℝ
  regularizedSemigroup : RegularizedSemigroupPackage
  regularizedGenerator : ℝ → (space → space)
  generatorFamily : ∀ ε > 0, InfinitesimalGeneratorPackage
  consistency : ∀ ε > 0, ∀ x : space, regularizedGenerator ε x = generatorFamily ε x
  limitProperty : ∀ x ∈ (generatorFamily (1 : ℝ)).domain, Filter.Tendsto (λ ε : ℝ => regularizedGenerator ε x) (𝓝 0) (𝓝 ((generatorFamily (1 : ℝ)).generator x))

structure RegularizedGeneratorEvidence (R : RegularizedGeneratorPackage) where
  consistencyClosed : R.consistency
  limitPropertyClosed : R.limitProperty

def RegularizedGeneratorClosed (R : RegularizedGeneratorPackage) : Prop :=
  R.consistency ∧ R.limitProperty

theorem regularized_generator_closed_from_evidence (R : RegularizedGeneratorPackage) (E : RegularizedGeneratorEvidence R) :
    RegularizedGeneratorClosed R := by
  exact And.intro E.consistencyClosed E.limitPropertyClosed

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse
