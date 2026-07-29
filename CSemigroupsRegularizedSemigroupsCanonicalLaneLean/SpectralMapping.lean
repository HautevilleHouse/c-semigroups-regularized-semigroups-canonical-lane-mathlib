import canonicalLaneMathlib.AdmissibleClass
import CSemigroupDefinition
import RegularizedSemigroupDefinition
import GenerationTheorem

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure SpectralMappingPackage (A : CSemigroupObject) (R : RegularizedSemigroupObject A) (G : GenerationTheoremPackage A R) where
  spectrum : A.carrier → Set ℝ
  spectralMapping : ∀ (f : ℝ → ℝ) (x : A.carrier), f (spectrum x) = spectrum (G.generator x)
  functionalCalculus : ∀ (f : ℝ → ℝ) (x : A.carrier), ∃ y : A.carrier, G.generator y = f x

structure SpectralMappingEvidence (A : CSemigroupObject) (R : RegularizedSemigroupObject A) (G : GenerationTheoremPackage A R) (S : SpectralMappingPackage A R G) where
  closedSpectralMapping : S.spectralMapping
  closedFunctionalCalculus : S.functionalCalculus

def SpectralMappingClosed (A : CSemigroupObject) (R : RegularizedSemigroupObject A) (G : GenerationTheoremPackage A R) (S : SpectralMappingPackage A R G) : Prop :=
  S.spectralMapping ∧ S.functionalCalculus

theorem spectral_mapping_closed_from_evidence (A : CSemigroupObject) (R : RegularizedSemigroupObject A) (G : GenerationTheoremPackage A R) (S : SpectralMappingPackage A R G) (E : SpectralMappingEvidence A R G S) : SpectralMappingClosed A R G S := by
  exact And.intro E.closedSpectralMapping E.closedFunctionalCalculus

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse