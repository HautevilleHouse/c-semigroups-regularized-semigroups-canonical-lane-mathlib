import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure RegularizedSemigroupObject (A : CSemigroupObject) where
  parameter : ℝ
  semigroup : A.carrier → A.carrier
  regularity : ∀ x : A.carrier, A.norm (semigroup x) ≤ A.norm x
  strongContinuity : ∀ x : A.carrier, Tendsto (fun t : ℝ => semigroup x) (nhds 0) (nhds (semigroup x))
  semigroupProperty : ∀ s t : ℝ, semigroup (A.mul (semigroup (A.one)) (semigroup (A.one))) = semigroup (A.one)

structure RegularizedSemigroupEvidence (A : CSemigroupObject) (R : RegularizedSemigroupObject A) where
  closedRegularity : ∀ x, R.regularity x
  closedStrongContinuity : R.strongContinuity (A.one)
  closedSemigroupProperty : R.semigroupProperty

def RegularizedSemigroupClosed (A : CSemigroupObject) (R : RegularizedSemigroupObject A) : Prop :=
  R.regularity ∧ R.strongContinuity ∧ R.semigroupProperty

theorem regularized_semigroup_closed_from_evidence (A : CSemigroupObject) (R : RegularizedSemigroupObject A) (E : RegularizedSemigroupEvidence A R) : RegularizedSemigroupClosed A R := by
  exact And.intro E.closedRegularity (And.intro E.closedStrongContinuity E.closedSemigroupProperty)

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse