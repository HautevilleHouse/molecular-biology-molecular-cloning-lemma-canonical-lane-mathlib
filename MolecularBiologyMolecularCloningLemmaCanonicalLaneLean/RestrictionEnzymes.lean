import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure RestrictionEnzyme where
  name : String
  recognitionSequence : String
  cutPosition : Nat
  stickyEnds : Bool
  methylationSensitive : Prop

structure RestrictionDigest where
  enzyme : RestrictionEnzyme
  dnaStrand : DNAStrand
  cutSites : List Nat
  fragmentCount : Nat

def RestrictionEnzymeRecognizes (enz : RestrictionEnzyme) (strand : DNAStrand) : Prop :=
  strand.sequence.map (λ b => b.baseType) |>.join |>.contains enz.recognitionSequence

theorem restriction_enzyme_recognizes_self (enz : RestrictionEnzyme) :
  RestrictionEnzymeRecognizes enz { sequence := [], direction := "5'", selfComplementary := True, gcContent := 0.0 } := by
  simp [RestrictionEnzymeRecognizes]

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse