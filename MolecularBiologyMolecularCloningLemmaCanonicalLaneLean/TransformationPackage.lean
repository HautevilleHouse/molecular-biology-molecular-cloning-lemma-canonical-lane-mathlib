import HautevilleHouse.MolecularBiologyMolecularCloningLemmaCanonicalLaneLean.LigationPackage

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure TransformationPackage {A : AdmissibleClass}
    {R : RestrictionEnzymePackage A} {L : LigationPackage R} where
  competentCells : Prop
  heatShockProtocol : Prop
  plasmidUptake : Prop
  competentCellsTerm : competentCells
  heatShockProtocolTerm : heatShockProtocol
  plasmidUptakeTerm : plasmidUptake

structure TransformationEvidence {A : AdmissibleClass}
    {R : RestrictionEnzymePackage A} {L : LigationPackage R}
    (T : TransformationPackage L) where
  competentCellsClosed : T.competentCells
  heatShockProtocolClosed : T.heatShockProtocol
  plasmidUptakeClosed : T.plasmidUptake

def TransformationClosed {A : AdmissibleClass}
    {R : RestrictionEnzymePackage A} {L : LigationPackage R}
    (T : TransformationPackage L) : Prop :=
  T.competentCells ∧ T.heatShockProtocol ∧ T.plasmidUptake

theorem transformation_closed_from_evidence
    {A : AdmissibleClass} {R : RestrictionEnzymePackage A}
    {L : LigationPackage R} (T : TransformationPackage L)
    (E : TransformationEvidence T) : TransformationClosed T := by
  exact And.intro E.competentCellsClosed
    (And.intro E.heatShockProtocolClosed E.plasmidUptakeClosed)

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse
