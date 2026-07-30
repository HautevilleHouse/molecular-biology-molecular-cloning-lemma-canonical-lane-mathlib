import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure RestrictionEnzymePackage where
  recognitionSite : Prop
  cleavageMechanism : Prop
  stickyEnds : Prop
  compatibleOverhangs : Prop
  ligationEfficiency : Prop

structure RestrictionEnzymeEvidence (R : RestrictionEnzymePackage) where
  recognitionSiteClosed : R.recognitionSite
  cleavageMechanismClosed : R.cleavageMechanism
  stickyEndsClosed : R.stickyEnds
  compatibleOverhangsClosed : R.compatibleOverhangs
  ligationEfficiencyClosed : R.ligationEfficiency

def RestrictionEnzymeClosed (R : RestrictionEnzymePackage) : Prop :=
  R.recognitionSite ∧ R.cleavageMechanism ∧ R.stickyEnds ∧ R.compatibleOverhangs ∧ R.ligationEfficiency

theorem restriction_enzyme_closed_from_evidence (R : RestrictionEnzymePackage)
    (E : RestrictionEnzymeEvidence R) : RestrictionEnzymeClosed R := by
  exact And.intro E.recognitionSiteClosed
    (And.intro E.cleavageMechanismClosed
      (And.intro E.stickyEndsClosed
        (And.intro E.compatibleOverhangsClosed E.ligationEfficiencyClosed)))

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse
