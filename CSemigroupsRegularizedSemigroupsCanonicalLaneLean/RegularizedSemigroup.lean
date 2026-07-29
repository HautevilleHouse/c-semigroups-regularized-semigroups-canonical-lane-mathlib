import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure RegularizedSemigroupPackage where
  U : Type u
  norm : U → ℝ
  R : ℝ → (U → U)
  R_regularized : Prop
  R_stronglyContinuous : Prop
  R_resolvent : Prop
  R_generator : Prop

structure RegularizedSemigroupEvidence (P : RegularizedSemigroupPackage) where
  R_regularizedClosed : P.R_regularized
  R_stronglyContinuousClosed : P.R_stronglyContinuous
  R_resolventClosed : P.R_resolvent
  R_generatorClosed : P.R_generator

def RegularizedSemigroupClosed (P : RegularizedSemigroupPackage) : Prop :=
  P.R_regularized ∧ P.R_stronglyContinuous ∧ P.R_resolvent ∧ P.R_generator

theorem regularized_semigroup_closed_from_evidence (P : RegularizedSemigroupPackage) (E : RegularizedSemigroupEvidence P) : RegularizedSemigroupClosed P := by
  exact And.intro E.R_regularizedClosed (And.intro E.R_stronglyContinuousClosed (And.intro E.R_resolventClosed E.R_generatorClosed))

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse