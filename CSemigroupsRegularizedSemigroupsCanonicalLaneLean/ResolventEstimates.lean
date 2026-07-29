import canonicalLaneMathlib.AdmissibleClass
import CSemigroupsRegularizedSemigroupsCanonicalLaneLean.CSemigroupStructure

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure ResolventEstimates (X : BanachSpace) (C : CSemigroupObject X) where
  resolventSet : Set ℂ
  bound : ℂ → ℝ
  estimateHolds : ∀ λ ∈ resolventSet, ∥(λI - C.generator)⁻¹∥ ≤ bound λ

def ResolventEstimatesClosed {X : BanachSpace} {C : CSemigroupObject X} (R : ResolventEstimates X C) : Prop :=
  R.estimateHolds

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse