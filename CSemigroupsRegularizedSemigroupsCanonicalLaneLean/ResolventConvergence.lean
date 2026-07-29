import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CSemigroupsRegularizedSemigroupsCanonicalLaneLean.CSemigroupDefinition
import HautevilleHouse.CSemigroupsRegularizedSemigroupsCanonicalLaneLean.RegularizedSemigroup

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure ResolventConvergencePackage (R : RegularizedSemigroupPackage) where
  lambdaSet : Set ℝ
  resolventOperator : ℝ → (R.U → R.U)
  convergenceCondition : Prop
  limitSemigroup : CSemigroupPackage
  consistency : Prop

structure ResolventConvergenceEvidence {R : RegularizedSemigroupPackage} (P : ResolventConvergencePackage R) where
  convergenceConditionClosed : P.convergenceCondition
  consistencyClosed : P.consistency

def ResolventConvergenceClosed {R : RegularizedSemigroupPackage} (P : ResolventConvergencePackage R) : Prop :=
  P.convergenceCondition ∧ P.consistency

theorem resolvent_convergence_closed_from_evidence {R : RegularizedSemigroupPackage} (P : ResolventConvergencePackage R) (E : ResolventConvergenceEvidence P) : ResolventConvergenceClosed P := by
  exact And.intro E.convergenceConditionClosed E.consistencyClosed

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse