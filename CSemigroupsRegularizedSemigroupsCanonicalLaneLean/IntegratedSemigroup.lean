import canonicalLaneMathlib.AdmissibleClass
import CSemigroupsRegularizedSemigroupsCanonicalLaneLean.CSemigroupStructure

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure IntegratedSemigroup (X : BanachSpace) where
  k : ℕ
  family : ℝ≥0 → X.carrier → X.carrier
  regularity : ∀ x, Continuous (λ t => family t x)
  semigroupProperty : ∀ s t, family (s + t) = family s ∘ family t
  growthCondition : Prop

def IntegratedSemigroupClosed {X : BanachSpace} (I : IntegratedSemigroup X) : Prop :=
  I.growthCondition ∧ I.regularity

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse