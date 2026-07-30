import HautevilleHouse.MolecularBiologyMolecularCloningLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure RestrictionEnzymePackage (A : AdmissibleClass) where
  recognitionSequence : String
  cutPattern : Prop
  stickyEndGeneration : Prop
  recognitionSequenceTerm : recognitionSequence = "GAATTC"
  cutPatternTerm : cutPattern
  stickyEndGenerationTerm : stickyEndGeneration

structure RestrictionEnzymeEvidence {A : AdmissibleClass} (R : RestrictionEnzymePackage A) where
  cutPatternClosed : R.cutPattern
  stickyEndGenerationClosed : R.stickyEndGeneration

def RestrictionEnzymeClosed {A : AdmissibleClass} (R : RestrictionEnzymePackage A) : Prop :=
  R.cutPattern ∧ R.stickyEndGeneration

theorem restriction_enzyme_closed_from_evidence
    {A : AdmissibleClass} (R : RestrictionEnzymePackage A)
    (E : RestrictionEnzymeEvidence R) : RestrictionEnzymeClosed R := by
  exact And.intro E.cutPatternClosed E.stickyEndGenerationClosed

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse
