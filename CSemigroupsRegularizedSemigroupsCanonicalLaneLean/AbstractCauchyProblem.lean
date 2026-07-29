import canonicalLaneMathlib.AdmissibleClass
import CSemigroupsRegularizedSemigroupsCanonicalLaneLean.CSemigroupStructure

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure CauchyWellposedness (X : BanachSpace) (C : CSemigroupObject X) where
  uniqueSolution : Prop
  continuousDependence : Prop
  mildSolutionEquivalence : Prop

def CauchyWellposednessClosed {X : BanachSpace} {C : CSemigroupObject X} (W : CauchyWellposedness X C) : Prop :=
  W.uniqueSolution ∧ W.continuousDependence ∧ W.mildSolutionEquivalence

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse