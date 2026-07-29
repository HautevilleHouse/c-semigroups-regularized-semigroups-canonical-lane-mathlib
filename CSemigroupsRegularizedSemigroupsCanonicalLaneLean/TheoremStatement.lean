import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  semigroupConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "c-semigroups-regularized-semigroups-canonical-lane",
  theoremName := "regularized semigroups generation",
  theoremObject := "admissible c-semigroup closure",
  classicalBoundary := "carried remainder: classical boundary open",
  semigroupConstrainedStatement := "c-semigroup closure internalized through bridge and gate",
  certificateLane := "semigroup_constrained",
  carriedRemainder := "classical source boundary carried"
}

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse
