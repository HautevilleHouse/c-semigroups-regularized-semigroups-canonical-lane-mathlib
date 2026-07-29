import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure InfinitesimalGeneratorPackage where
  space : Type u
  norm : space → ℝ
  cSemigroup : CSemigroupPackage
  domain : Set space
  generator : space → space
  domainCharacterization : ∀ x : space, x ∈ generator.domain ↔ limit (λ h : ℝ => (cSemigroup.operatorFamily h x - x) / h) (𝓝 0) ≠ 0
  generatorAction : ∀ x ∈ generator.domain, generator x = limit (λ h : ℝ => (cSemigroup.operatorFamily h x - x) / h) (𝓝 0)

structure InfinitesimalGeneratorEvidence (G : InfinitesimalGeneratorPackage) where
  domainCharacterizationClosed : G.domainCharacterization
  generatorActionClosed : G.generatorAction

def InfinitesimalGeneratorClosed (G : InfinitesimalGeneratorPackage) : Prop :=
  G.domainCharacterization ∧ G.generatorAction

theorem infinitesimal_generator_closed_from_evidence (G : InfinitesimalGeneratorPackage) (E : InfinitesimalGeneratorEvidence G) :
    InfinitesimalGeneratorClosed G := by
  exact And.intro E.domainCharacterizationClosed E.generatorActionClosed

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse
