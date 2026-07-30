import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure LigationEfficiency where
  vectorEnds : String
  insertEnds : String
  ligationEfficiency : Float
  optimalRatio : Float
  incubationTime : Float

default LigationEfficiency where
  vectorEnds := "sticky"
  insertEnds := "sticky"
  ligationEfficiency := 0.9
  optimalRatio := 3.0
  incubationTime := 1.0

structure LigationEvidence (L : LigationEfficiency) where
  efficiencyValid : L.ligationEfficiency > 0.5
  optimalRatioValid : L.optimalRatio ≥ 1.0
  incubationTimeValid : L.incubationTime > 0.0

def LigationEfficiencyClosed (L : LigationEfficiency) : Prop :=
  L.ligationEfficiency > 0.5 ∧ L.optimalRatio ≥ 1.0 ∧ L.incubationTime > 0.0

theorem ligation_efficiency_closed_from_evidence (L : LigationEfficiency) (E : LigationEvidence L) : LigationEfficiencyClosed L := by
  exact And.intro E.efficiencyValid (And.intro E.optimalRatioValid E.incubationTimeValid)

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse