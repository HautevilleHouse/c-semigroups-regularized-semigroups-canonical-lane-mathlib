import CSemigroupsRegularizedSemigroupsCanonicalLaneLean.GenerationTheorem

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure PerturbationTheoryPackage {C : CSemigroupDefinition}
    {R : RegularizedSemigroup C} (G : GenerationTheoremPackage R) where
  perturbationBounded : Prop
  perturbedGeneratorClosed : Prop
  perturbedSemigroupExists : Prop

structure PerturbationTheoryEvidence {C : CSemigroupDefinition}
    {R : RegularizedSemigroup C} {G : GenerationTheoremPackage R}
    (P : PerturbationTheoryPackage G) where
  perturbationBoundedClosed : P.perturbationBounded
  perturbedGeneratorClosedClosed : P.perturbedGeneratorClosed
  perturbedSemigroupExistsClosed : P.perturbedSemigroupExists

def PerturbationTheoryClosed {C : CSemigroupDefinition}
    {R : RegularizedSemigroup C} {G : GenerationTheoremPackage R}
    (P : PerturbationTheoryPackage G) : Prop :=
  P.perturbationBounded ∧ P.perturbedGeneratorClosed ∧ P.perturbedSemigroupExists

theorem perturbation_theory_closed_from_evidence
    {C : CSemigroupDefinition} {R : RegularizedSemigroup C}
    {G : GenerationTheoremPackage R} (P : PerturbationTheoryPackage G)
    (E : PerturbationTheoryEvidence P) : PerturbationTheoryClosed P := by
  exact And.intro E.perturbationBoundedClosed
    (And.intro E.perturbedGeneratorClosedClosed E.perturbedSemigroupExistsClosed)

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse