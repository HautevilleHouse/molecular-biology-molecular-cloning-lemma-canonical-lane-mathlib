import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure PlasmidConstructionPackage where
  originOfReplication : Prop
  multipleCloningSite : Prop
  selectableMarker : Prop
  insertCompatibility : Prop

structure PlasmidConstructionEvidence (P : PlasmidConstructionPackage) where
  originOfReplicationClosed : P.originOfReplication
  multipleCloningSiteClosed : P.multipleCloningSite
  selectableMarkerClosed : P.selectableMarker
  insertCompatibilityClosed : P.insertCompatibility

def PlasmidConstructionClosed (P : PlasmidConstructionPackage) : Prop :=
  P.originOfReplication ∧ P.multipleCloningSite ∧
  P.selectableMarker ∧ P.insertCompatibility

theorem plasmid_construction_closed_from_evidence
    (P : PlasmidConstructionPackage) (E : PlasmidConstructionEvidence P) :
    PlasmidConstructionClosed P := by
  exact And.intro E.originOfReplicationClosed
    (And.intro E.multipleCloningSiteClosed
      (And.intro E.selectableMarkerClosed E.insertCompatibilityClosed))

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse