import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure PCRPackage where
  dnaTemplate : Prop
  primerAnnealing : Prop
  extensionByPolymerase : Prop
  thermalCycling : Prop
  amplificationFidelity : Prop

structure PCREvidence (P : PCRPackage) where
  dnaTemplateClosed : P.dnaTemplate
  primerAnnealingClosed : P.primerAnnealing
  extensionByPolymeraseClosed : P.extensionByPolymerase
  thermalCyclingClosed : P.thermalCycling
  amplificationFidelityClosed : P.amplificationFidelity

def PCRClosed (P : PCRPackage) : Prop :=
  P.dnaTemplate ∧ P.primerAnnealing ∧ P.extensionByPolymerase ∧ P.thermalCycling ∧ P.amplificationFidelity

theorem pcr_closed_from_evidence (P : PCRPackage) (E : PCREvidence P) : PCRClosed P := by
  exact And.intro E.dnaTemplateClosed
    (And.intro E.primerAnnealingClosed
      (And.intro E.extensionByPolymeraseClosed
        (And.intro E.thermalCyclingClosed E.amplificationFidelityClosed)))

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse
