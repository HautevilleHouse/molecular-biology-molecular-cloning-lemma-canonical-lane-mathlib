import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure CloningVectorStructure where
  replicon : Type u
  originOfReplication : replicon
  selectableMarker : Type v
  multipleCloningSite : List Nat
  vectorSize : Nat
  copyNumber : Nat
  hostRange : List String

def CloningVectorClosed (V : CloningVectorStructure) : Prop :=
  V.vectorSize > 0 ∧ V.copyNumber > 0

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse