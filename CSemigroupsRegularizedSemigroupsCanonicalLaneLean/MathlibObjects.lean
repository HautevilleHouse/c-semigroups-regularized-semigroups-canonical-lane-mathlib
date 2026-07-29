import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure BanachSpace where
  carrier : Type
  norm : carrier → ℝ
  norm_nonneg : ∀ x : carrier, 0 ≤ norm x
  norm_eq_zero_iff : ∀ x : carrier, norm x = 0 ↔ x = (0 : carrier)
  triangle_ineq : ∀ x y : carrier, norm (x + y) ≤ norm x + norm y
  scalar_norm : ∀ (a : ℝ) (x : carrier), norm (a • x) = |a| * norm x
  completeness : ∀ f : ℕ → carrier, (∀ ε > 0, ∃ N, ∀ m n ≥ N, norm (f m - f n) < ε) → (∃ L : carrier, ∀ ε > 0, ∃ N, ∀ n ≥ N, norm (f n - L) < ε)

structure CSemigroup (X : BanachSpace) where
  family : ℝ → (X → X)
  identity_at_zero : ∀ x : X, family 0 x = x
  semigroup_property : ∀ s t ≥ 0, ∀ x : X, family (s + t) x = family s (family t x)
  strong_continuity : ∀ x : X, ∀ t₀ ≥ 0, ContinuousAt (λ t : ℝ => family t x) t₀

structure RegularizedSemigroup (X : BanachSpace) (C : CSemigroup X) where
  regularizer : ℝ → ℝ
  regularizer_nonneg : ∀ t ≥ 0, regularizer t ≥ 0
  regularized_family : ℝ → (X → X)
  regularized_identity : ∀ x : X, regularized_family 0 x = x
  regularized_semigroup : ∀ s t ≥ 0, ∀ x : X, regularized_family (s + t) x = regularized_family s (C.family t x)
  strong_continuity_regularized : ∀ x : X, ∀ t₀ ≥ 0, ContinuousAt (λ t : ℝ => regularized_family t x) t₀

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse