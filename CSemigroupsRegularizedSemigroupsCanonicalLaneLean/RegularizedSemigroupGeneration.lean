import canonicalLaneMathlib.AdmissibleClass
import CSemigroupsRegularizedSemigroupsCanonicalLaneLean.CSemigroupStructure

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure GenerationPackage (X : BanachSpace) (C : CSemigroupObject X) where
  resolventBound : Prop
  hilleYosidaCondition : Prop
  generationTheorem : C.generator generates C.params.semigroup

def GenerationClosed {X : BanachSpace} {C : CSemigroupObject X} (G : GenerationPackage X C) : Prop :=
  G.resolventBound ∧ G.hilleYosidaCondition ∧ G.generationTheorem

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse