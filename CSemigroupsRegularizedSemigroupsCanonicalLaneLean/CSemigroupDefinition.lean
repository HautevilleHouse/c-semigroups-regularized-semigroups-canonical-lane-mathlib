import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure CSemigroupPackage where
  U : Type u
  norm : U → ℝ
  T : U → (U → U)
  T_semigroup : Prop
  T_stronglyContinuous : Prop
  T_exponentialBound : Prop
  T_generator : Prop

structure CSemigroupEvidence (P : CSemigroupPackage) where
  T_semigroupClosed : P.T_semigroup
  T_stronglyContinuousClosed : P.T_stronglyContinuous
  T_exponentialBoundClosed : P.T_exponentialBound
  T_generatorClosed : P.T_generator

def CSemigroupClosed (P : CSemigroupPackage) : Prop :=
  P.T_semigroup ∧ P.T_stronglyContinuous ∧ P.T_exponentialBound ∧ P.T_generator

theorem c_semigroup_closed_from_evidence (P : CSemigroupPackage) (E : CSemigroupEvidence P) : CSemigroupClosed P := by
  exact And.intro E.T_semigroupClosed (And.intro E.T_stronglyContinuousClosed (And.intro E.T_exponentialBoundClosed E.T_generatorClosed))

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse