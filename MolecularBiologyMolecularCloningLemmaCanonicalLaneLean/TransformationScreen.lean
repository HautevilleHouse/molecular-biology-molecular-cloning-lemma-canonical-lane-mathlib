import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure TransformationScreenPackage where
  competentCells : Prop
  heatShockEfficiency : Prop
  antibioticSelection : Prop
  colonyPCRConfirmation : Prop

structure TransformationScreenEvidence (T : TransformationScreenPackage) where
  competentCellsClosed : T.competentCells
  heatShockEfficiencyClosed : T.heatShockEfficiency
  antibioticSelectionClosed : T.antibioticSelection
  colonyPCRConfirmationClosed : T.colonyPCRConfirmation

def TransformationScreenClosed (T : TransformationScreenPackage) : Prop :=
  T.competentCells ∧ T.heatShockEfficiency ∧
  T.antibioticSelection ∧ T.colonyPCRConfirmation

theorem transformation_screen_closed_from_evidence
    (T : TransformationScreenPackage) (E : TransformationScreenEvidence T) :
    TransformationScreenClosed T := by
  exact And.intro E.competentCellsClosed
    (And.intro E.heatShockEfficiencyClosed
      (And.intro E.antibioticSelectionClosed E.colonyPCRConfirmationClosed))

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse