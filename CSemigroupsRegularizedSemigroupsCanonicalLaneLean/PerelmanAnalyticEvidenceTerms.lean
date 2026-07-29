import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure CSemigroupEvidenceTerms (X : BanachSpace) (C : CSemigroup X) where
  identity_at_zero : C.identity_at_zero
  semigroup_property : C.semigroup_property
  strong_continuity : C.strong_continuity

def CSemigroup.evidenceTerms (X : BanachSpace) (C : CSemigroup X) : CSemigroupEvidenceTerms X C := {
  identity_at_zero := C.identity_at_zero
  semigroup_property := C.semigroup_property
  strong_continuity := C.strong_continuity
}

structure RegularizedSemigroupEvidenceTerms (X : BanachSpace) (C : CSemigroup X) (R : RegularizedSemigroup X C) where
  regularized_identity : R.regularized_identity
  regularized_semigroup : R.regularized_semigroup
  strong_continuity_regularized : R.strong_continuity_regularized

def RegularizedSemigroup.evidenceTerms (X : BanachSpace) (C : CSemigroup X) (R : RegularizedSemigroup X C) : RegularizedSemigroupEvidenceTerms X C R := {
  regularized_identity := R.regularized_identity
  regularized_semigroup := R.regularized_semigroup
  strong_continuity_regularized := R.strong_continuity_regularized
}

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse