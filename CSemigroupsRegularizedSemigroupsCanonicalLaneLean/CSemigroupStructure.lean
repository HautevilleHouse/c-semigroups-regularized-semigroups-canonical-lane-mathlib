import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure BanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  complete : Prop

structure CSemigroupParameters (X : BanachSpace) where
  semigroup : ℝ≥0 → (X.carrier → X.carrier)
  strongContinuity : ∀ x : X.carrier, ContinuousAt (λ t => semigroup t x) 0
  semigroupProperty : ∀ s t ≥ 0, semigroup (s + t) = semigroup s ∘ semigroup t
  identityAtZero : semigroup 0 = id

structure CSemigroupObject (X : BanachSpace) where
  params : CSemigroupParameters X
  generator : X.carrier → X.carrier
  generatorDefinition : ∀ x ∈ dom generator, deriv (λ t => params.semigroup t x) 0 = generator x
  domDense : Dense (dom generator)

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse