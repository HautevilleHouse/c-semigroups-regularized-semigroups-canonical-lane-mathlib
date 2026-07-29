import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CSemigroupsRegularizedSemigroupsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "C Semigroups Regularized Semigroups",
  theoremObject := "CSemigroupsRegularizedSemigroups",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "Specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

end CSemigroupsRegularizedSemigroupsCanonicalLaneLean
end HautevilleHouse