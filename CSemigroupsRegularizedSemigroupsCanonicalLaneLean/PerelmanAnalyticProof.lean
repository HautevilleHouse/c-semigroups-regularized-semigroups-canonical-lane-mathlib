import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure CSemigroupAnalyticCertificate (X : BanachSpace) where
  family : ℝ → (X → X)
  identity_at_zero : Prop
  semigroup_property : Prop
  strong_continuity : Prop
  identity_at_zero_closed : identity_at_zero
  semigroup_property_closed : semigroup_property
  strong_continuity_closed : strong_continuity

def CSemigroupAnalyticCertificate.CSemigroup (X : BanachSpace) (C : CSemigroupAnalyticCertificate X) : CSemigroup X where
  family := C.family
  identity_at_zero := C.identity_at_zero_closed
  semigroup_property := C.semigroup_property_closed
  strong_continuity := C.strong_continuity_closed

structure RegularizedSemigroupAnalyticCertificate (X : BanachSpace) where
  regularizer : ℝ → ℝ
  regularized_family : ℝ → (X → X)
  regularized_identity : Prop
  regularized_semigroup : Prop
  strong_continuity_regularized : Prop
  regularized_identity_closed : regularized_identity
  regularized_semigroup_closed : regularized_semigroup
  strong_continuity_regularized_closed : strong_continuity_regularized

def RegularizedSemigroupAnalyticCertificate.RegularizedSemigroup (X : BanachSpace) (C : CSemigroup X) (R : RegularizedSemigroupAnalyticCertificate X) : RegularizedSemigroup X C where
  regularizer := R.regularizer
  regularized_family := R.regularized_family
  regularized_identity := R.regularized_identity_closed
  regularized_semigroup := R.regularized_semigroup_closed
  strong_continuity_regularized := R.strong_continuity_regularized_closed

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse