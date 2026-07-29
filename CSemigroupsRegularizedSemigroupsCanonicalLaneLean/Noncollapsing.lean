import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure NoncollapsingPackage (G : BanachSpace) where
  uniformContinuityCondition : Prop
  boundednessCondition : Prop
  regularizerGrowth : Prop

structure NoncollapsingEvidence {G : BanachSpace} (N : NoncollapsingPackage G) where
  uniformContinuityConditionClosed : N.uniformContinuityCondition
  boundednessConditionClosed : N.boundednessCondition
  regularizerGrowthClosed : N.regularizerGrowth

def NoncollapsingClosed {G : BanachSpace} (N : NoncollapsingPackage G) : Prop :=
  N.uniformContinuityCondition ∧ N.boundednessCondition ∧ N.regularizerGrowth

theorem noncollapsing_closed_from_evidence {G : BanachSpace} (N : NoncollapsingPackage G) (E : NoncollapsingEvidence N) : NoncollapsingClosed N := by
  exact And.intro E.uniformContinuityConditionClosed (And.intro E.boundednessConditionClosed E.regularizerGrowthClosed)

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse