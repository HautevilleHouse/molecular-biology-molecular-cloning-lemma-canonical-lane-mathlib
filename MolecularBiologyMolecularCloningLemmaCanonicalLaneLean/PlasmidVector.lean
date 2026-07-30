import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyMolecularCloningLemmaCanonicalLaneLean.DNASequencing
import MolecularBiologyMolecularCloningLemmaCanonicalLaneLean.RestrictionEnzymes

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure PlasmidVector where
  backbone : DNAStrand
  originOfReplication : String
  selectableMarker : String
  multipleCloningSite : DNAStrand
  copyNumber : Nat

def PlasmidInsertCompatible (plasmid : PlasmidVector) (insert : DNAStrand) : Prop :=
  plasmid.multipleCloningSite.length = insert.length ∧
  plasmid.multipleCloningSite.sequence.zip insert.sequence |>.all (λ (a,b) => a.baseType = b.complement)

theorem plasmid_insert_compatible_if_complementary (plasmid : PlasmidVector) (insert : DNAStrand) :
  (plasmid.multipleCloningSite.length = insert.length ∧
   ∀ (i : Nat) (h : i < plasmid.multipleCloningSite.length),
     (plasmid.multipleCloningSite.sequence.get? i).get!.baseType = (insert.sequence.get? i).get!.complement) →
  PlasmidInsertCompatible plasmid insert := by
  intro h
  unfold PlasmidInsertCompatible
  exact h

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse