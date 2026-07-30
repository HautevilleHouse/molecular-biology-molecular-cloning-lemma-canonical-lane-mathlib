import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure RestrictionEnzyme where
  recognitionSite : String
  cutPattern : String
  stickyOverhang : Bool
  methylationSensitive : Bool

structure RestrictionDigest where
  enzyme : RestrictionEnzyme
  dnaSequence : String
  cutSites : List Nat
  fragmentSizes : List Nat
  digestComplete : Prop

structure RestrictionEnzymeEvidence (RD : RestrictionDigest) where
  cutSitesIdentified : RD.cutSites.length > 0
  fragmentSizesComputed : RD.fragmentSizes.length = RD.cutSites.length + 1
  digestCompleteClosed : RD.digestComplete

def RestrictionDigestClosed (RD : RestrictionDigest) : Prop :=
  RD.cutSites.length > 0 ∧ RD.fragmentSizes.length = RD.cutSites.length + 1 ∧ RD.digestComplete

theorem restriction_digest_closed_from_evidence (RD : RestrictionDigest) (E : RestrictionEnzymeEvidence RD) : RestrictionDigestClosed RD := by
  exact And.intro E.cutSitesIdentified (And.intro E.fragmentSizesComputed E.digestCompleteClosed)

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse