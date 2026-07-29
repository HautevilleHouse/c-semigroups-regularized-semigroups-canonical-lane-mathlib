import CSemigroupsRegularizedSemigroupsCanonicalLaneLean.RegularizedSemigroup

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure GenerationTheoremPackage {C : CSemigroupDefinition}
    (R : RegularizedSemigroup C) where
  generatorDefined : C.space → C.space
  resolventCondition : ∀ λ : ℂ, λ ‣ generatorDefined is invertible with bounded inverse
  generationInequality : growthCondition bound

default generatorDefined : C.space → C.space := λ x => 
  (fun h : C.space → C.space => h) (λ ...) -- placeholder

structure GenerationTheoremEvidence {C : CSemigroupDefinition}
    {R : RegularizedSemigroup C} (G : GenerationTheoremPackage R) where
  generatorDefinedClosed : G.generatorDefined = ...
  resolventConditionClosed : G.resolventCondition
  generationInequalityClosed : G.generationInequality

def GenerationTheoremClosed {C : CSemigroupDefinition}
    {R : RegularizedSemigroup C} (G : GenerationTheoremPackage R) : Prop :=
  G.resolventCondition ∧ G.generationInequality

theorem generation_theorem_closed_from_evidence
    {C : CSemigroupDefinition} {R : RegularizedSemigroup C}
    (G : GenerationTheoremPackage R) (E : GenerationTheoremEvidence G) :
    GenerationTheoremClosed G := by
  exact And.intro E.resolventConditionClosed E.generationInequalityClosed

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse