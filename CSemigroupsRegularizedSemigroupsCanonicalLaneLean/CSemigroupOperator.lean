import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure CSemigroupPackage where
  space : Type u
  norm : space → ℝ
  operatorFamily : ℝ → space → space
  strongContinuity : ∀ x : space, ContinuousAt (λ t : ℝ => operatorFamily t x) 0
  semigroupProperty : ∀ s t : ℝ, operatorFamily (s + t) = operatorFamily s ∘ operatorFamily t
  growthBound : ℝ
  growthEstimate : ∃ M ω : ℝ, ∀ t ≥ 0, ∀ x : space, ‖operatorFamily t x‖ ≤ M * exp (ω * t) * ‖x‖

structure CSemigroupEvidence (C : CSemigroupPackage) where
  strongContinuityClosed : C.strongContinuity
  semigroupPropertyClosed : C.semigroupProperty
  growthEstimateClosed : C.growthEstimate

def CSemigroupClosed (C : CSemigroupPackage) : Prop :=
  C.strongContinuity ∧ C.semigroupProperty ∧ C.growthEstimate

theorem c_semigroup_closed_from_evidence (C : CSemigroupPackage) (E : CSemigroupEvidence C) :
    CSemigroupClosed C := by
  exact And.intro E.strongContinuityClosed (And.intro E.semigroupPropertyClosed E.growthEstimateClosed)

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse
