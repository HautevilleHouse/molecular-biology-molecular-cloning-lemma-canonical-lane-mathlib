import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure DNABase where
  baseType : String
  complement : String
  hydrogenBonds : Nat

structure DNAStrand where
  sequence : List DNABase
  direction : String -- 5' to 3' or 3' to 5'
  selfComplementary : Prop
  gcContent : Float

def DNABaseComplementaryBonds (b1 b2 : DNABase) : Prop :=
  b1.complement = b2.baseType ∧ b2.complement = b1.baseType

theorem dna_base_pairing_rule (b : DNABase) :
  DNABaseComplementaryBonds b { baseType := b.complement, complement := b.baseType, hydrogenBonds := 0 } := by
  simp [DNABaseComplementaryBonds]

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse