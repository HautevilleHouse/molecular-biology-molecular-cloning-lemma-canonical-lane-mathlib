import HautevilleHouse.MolecularBiologyMolecularCloningLemmaCanonicalLaneLean.TransformationPackage

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure ScreeningPackage {A : AdmissibleClass}
    {R : RestrictionEnzymePackage A} {L : LigationPackage R}
    {T : TransformationPackage L} where
  antibioticSelection : Prop
  blueWhiteScreening : Prop
  pcrVerification : Prop
  sequencingConfirmation : Prop
  antibioticSelectionTerm : antibioticSelection
  blueWhiteScreeningTerm : blueWhiteScreening
  pcrVerificationTerm : pcrVerification
  sequencingConfirmationTerm : sequencingConfirmation

structure ScreeningEvidence {A : AdmissibleClass}
    {R : RestrictionEnzymePackage A} {L : LigationPackage R}
    {T : TransformationPackage L} (S : ScreeningPackage T) where
  antibioticSelectionClosed : S.antibioticSelection
  blueWhiteScreeningClosed : S.blueWhiteScreening
  pcrVerificationClosed : S.pcrVerification
  sequencingConfirmationClosed : S.sequencingConfirmation

def ScreeningClosed {A : AdmissibleClass}
    {R : RestrictionEnzymePackage A} {L : LigationPackage R}
    {T : TransformationPackage L} (S : ScreeningPackage T) : Prop :=
  S.antibioticSelection ∧ S.blueWhiteScreening ∧ S.pcrVerification ∧ S.sequencingConfirmation

theorem screening_closed_from_evidence
    {A : AdmissibleClass} {R : RestrictionEnzymePackage A}
    {L : LigationPackage R} {T : TransformationPackage L}
    (S : ScreeningPackage T) (E : ScreeningEvidence S) : ScreeningClosed S := by
  exact And.intro E.antibioticSelectionClosed
    (And.intro E.blueWhiteScreeningClosed
      (And.intro E.pcrVerificationClosed E.sequencingConfirmationClosed))

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse
