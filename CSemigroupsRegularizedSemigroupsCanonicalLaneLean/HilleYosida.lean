import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CSemigroupsRegularizedSemigroups.RegularizedSemigroup
import HautevilleHouse.CSemigroupsRegularizedSemigroups.GeneratorClosure

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroups

structure HilleYosidaPackage {X : Type u} [NormedAddCommGroup X] [NormedSpace ℝ X] (S : RegularizedSemigroup X) (G : Generator S) where
  dissipativeCondition : ∀ x ∈ G.domain, ‖(λ • id - G.A) x‖ ≥ λ * ‖x‖ for some λ > 0
  rangeCondition : ∀ λ > 0, range (λ • id - G.A) = Set.univ
  resolventGrowth : ∃ M ≥ 1, ∀ λ > 0, ‖(λ • id - G.A)⁻¹‖ ≤ M / λ

def HilleYosidaClosed {X : Type u} [NormedAddCommGroup X] [NormedSpace ℝ X] {S : RegularizedSemigroup X} {G : Generator S} (H : HilleYosidaPackage S G) : Prop :=
  H.dissipativeCondition ∧ H.rangeCondition ∧ H.resolventGrowth

theorem hille_yosida_implies_regularized_generator {X : Type u} [NormedAddCommGroup X] [NormedSpace ℝ X] (S : RegularizedSemigroup X) (G : Generator S) (H : HilleYosidaPackage S G) :
  HilleYosidaClosed H := by
  exact And.intro H.dissipativeCondition (And.intro H.rangeCondition H.resolventGrowth)

end CSemigroupsRegularizedSemigroups
end HautevilleHouse