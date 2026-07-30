import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure LigationReaction where
  vector : PlasmidVector
  insert : DNAStrand
  ligasePresent : Bool
  incubationTime : Nat
  temperature : Float

def LigationSuccess (rxn : LigationReaction) : Prop :=
  rxn.ligasePresent ∧
  rxn.temperature > 4.0 ∧ rxn.temperature < 30.0 ∧
  rxn.incubationTime ≥ 60 ∧
  PlasmidInsertCompatible rxn.vector rxn.insert

theorem ligation_requires_complementary_ends (rxn : LigationReaction) :
  LigationSuccess rxn → PlasmidInsertCompatible rxn.vector rxn.insert := by
  intro h
  exact h.2.2.2.2

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse