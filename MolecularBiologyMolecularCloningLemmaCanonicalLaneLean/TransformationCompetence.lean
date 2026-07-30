import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure TransformationCompetence where
  hostStrain : String
  transformationEfficiency : Float
  selectionAntibiotic : String
  selectionConcentration : Float

default TransformationCompetence where
  hostStrain := "DH5α"
  transformationEfficiency := 1.0e6
  selectionAntibiotic := "ampicillin"
  selectionConcentration := 100.0

structure TransformationEvidence (T : TransformationCompetence) where
  efficiencyValid : T.transformationEfficiency ≥ 1.0e5
  concentrationValid : T.selectionConcentration > 0.0
  hostKnown : T.hostStrain ≠ ""

def TransformationCompetenceClosed (T : TransformationCompetence) : Prop :=
  T.transformationEfficiency ≥ 1.0e5 ∧ T.selectionConcentration > 0.0 ∧ T.hostStrain ≠ ""

theorem transformation_competence_closed_from_evidence (T : TransformationCompetence) (E : TransformationEvidence T) : TransformationCompetenceClosed T := by
  exact And.intro E.efficiencyValid (And.intro E.concentrationValid E.hostKnown)

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse