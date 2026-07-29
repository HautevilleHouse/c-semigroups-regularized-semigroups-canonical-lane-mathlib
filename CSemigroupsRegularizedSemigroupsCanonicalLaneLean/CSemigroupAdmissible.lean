import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CSemigroupsRegularizedSemigroups.RegularizedSemigroup
import HautevilleHouse.CSemigroupsRegularizedSemigroups.GeneratorClosure
import HautevilleHouse.CSemigroupsRegularizedSemigroups.HilleYosida

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroups

structure CSemigroupAdmittedObject (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] where
  S : RegularizedSemigroup X
  G : Generator S
  H : HilleYosidaPackage S G
  conclusion : RegularizedSemigroupClosed S ∧ GeneratorClosed G ∧ HilleYosidaClosed H

structure AdmissibleClass where
  object : CSemigroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let O := A.object
  O.conclusion.1 ∧ O.conclusion.2.1 ∧ O.conclusion.2.2

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  let O := A.object
  exact O.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CSemigroupsRegularizedSemigroups
end HautevilleHouse