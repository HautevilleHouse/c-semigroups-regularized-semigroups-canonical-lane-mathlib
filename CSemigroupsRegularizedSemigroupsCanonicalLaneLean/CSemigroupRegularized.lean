import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure CSemigroupRegularizedPackage where
  space : Type u
  norm : Norm space
  c : space → space
  semigroup : ℝ → space → space
  regularizedProperty : Prop
  generationProperty : Prop

def CSemigroupRegularizedClosed (P : CSemigroupRegularizedPackage) : Prop :=
  P.regularizedProperty ∧ P.generationProperty

theorem c_semigroup_regularized_closed_iff (P : CSemigroupRegularizedPackage) :
  CSemigroupRegularizedClosed P ↔ (P.regularizedProperty ∧ P.generationProperty) :=
  by
  constructor
  · intro h; exact h
  · intro h; exact h

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse
