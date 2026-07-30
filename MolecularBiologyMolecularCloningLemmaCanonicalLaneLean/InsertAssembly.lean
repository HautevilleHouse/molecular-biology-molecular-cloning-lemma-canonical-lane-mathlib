import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure InsertAssembly where
  insertDna : String
  restrictionEnzymes : List String
  vectorLinearized : Prop
  ligationEfficiency : Float
  insertSize : Nat
  annealingTemperature : Float

def InsertAssemblyClosed (A : InsertAssembly) : Prop :=
  A.ligationEfficiency > 0.5 ∧ A.vectorLinearized

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse