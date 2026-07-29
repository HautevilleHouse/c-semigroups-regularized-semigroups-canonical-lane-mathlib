import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CSemigroupsRegularizedSemigroups.RegularizedSemigroup

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroups

structure Generator {X : Type u} [NormedAddCommGroup X] [NormedSpace ℝ X] (S : RegularizedSemigroup X) where
  domain : Set X
  A : X → X
  generatorProperty : ∀ x ∈ domain, HasDerivAt (λ t : ℝ => S.T t (S.C x)) (A x) 0
  denseDomain : Dense domain

def GeneratorClosed {X : Type u} [NormedAddCommGroup X] [NormedSpace ℝ X] {S : RegularizedSemigroup X} (G : Generator S) : Prop :=
  G.generatorProperty ∧ G.denseDomain

theorem generator_closed_iff {X : Type u} [NormedAddCommGroup X] [NormedSpace ℝ X] {S : RegularizedSemigroup X} (G : Generator S) :
  GeneratorClosed G := by
  exact And.intro G.generatorProperty G.denseDomain

structure Resolvent {X : Type u} [NormedAddCommGroup X] [NormedSpace ℝ X] (S : RegularizedSemigroup X) (G : Generator S) where
  resolventSet : Set ℂ
  resolventProperty : ∀ λ ∈ resolventSet, ∃ R : X → X, (λ • id - G.A) ∘ R = id ∧ R ∘ (λ • id - G.A) = id

def ResolventClosed {X : Type u} [NormedAddCommGroup X] [NormedSpace ℝ X] {S : RegularizedSemigroup X} {G : Generator S} (R : Resolvent S G) : Prop :=
  R.resolventProperty

theorem resolvent_closed_iff {X : Type u} [NormedAddCommGroup X] [NormedSpace ℝ X] {S : RegularizedSemigroup X} {G : Generator S} (R : Resolvent S G) :
  ResolventClosed R := by
  exact R.resolventProperty

end CSemigroupsRegularizedSemigroups
end HautevilleHouse