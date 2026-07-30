import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure RestrictionLigationPackage where
  compatibleEnds : Prop
  ligationEfficiency : Prop
  recircularizationSuppressed : Prop
  insertOrientation : Prop

structure RestrictionLigationEvidence (R : RestrictionLigationPackage) where
  compatibleEndsClosed : R.compatibleEnds
  ligationEfficiencyClosed : R.ligationEfficiency
  recircularizationSuppressedClosed : R.recircularizationSuppressed
  insertOrientationClosed : R.insertOrientation

def RestrictionLigationClosed (R : RestrictionLigationPackage) : Prop :=
  R.compatibleEnds ∧ R.ligationEfficiency ∧
  R.recircularizationSuppressed ∧ R.insertOrientation

theorem restriction_ligation_closed_from_evidence
    (R : RestrictionLigationPackage) (E : RestrictionLigationEvidence R) :
    RestrictionLigationClosed R := by
  exact And.intro E.compatibleEndsClosed
    (And.intro E.ligationEfficiencyClosed
      (And.intro E.recircularizationSuppressedClosed E.insertOrientationClosed))

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse