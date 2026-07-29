import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CSemigroupsRegularizedSemigroupsCanonicalLaneLean.CSemigroupDefinition
import HautevilleHouse.CSemigroupsRegularizedSemigroupsCanonicalLaneLean.RegularizedSemigroup

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure GeneratorEmbeddingPackage (P : CSemigroupPackage) (R : RegularizedSemigroupPackage) where
  embeddingMap : P.U → R.U
  denseImage : Prop
  generatorConsistency : Prop
  resolventConsistency : Prop

structure GeneratorEmbeddingEvidence {P : CSemigroupPackage} {R : RegularizedSemigroupPackage} (G : GeneratorEmbeddingPackage P R) where
  denseImageClosed : G.denseImage
  generatorConsistencyClosed : G.generatorConsistency
  resolventConsistencyClosed : G.resolventConsistency

def GeneratorEmbeddingClosed {P : CSemigroupPackage} {R : RegularizedSemigroupPackage} (G : GeneratorEmbeddingPackage P R) : Prop :=
  G.denseImage ∧ G.generatorConsistency ∧ G.resolventConsistency

theorem generator_embedding_closed_from_evidence {P : CSemigroupPackage} {R : RegularizedSemigroupPackage} (G : GeneratorEmbeddingPackage P R) (E : GeneratorEmbeddingEvidence G) : GeneratorEmbeddingClosed G := by
  exact And.intro E.denseImageClosed (And.intro E.generatorConsistencyClosed E.resolventConsistencyClosed)

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse