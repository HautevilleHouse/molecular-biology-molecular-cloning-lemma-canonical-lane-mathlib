import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure TransformationEfficiency where
  competentCellType : String
  transformationMethod : String
  colonyCount : Nat
  plasmidDnaAmount : Float
  efficiency : Float

def TransformationEfficiencyClosed (T : TransformationEfficiency) : Prop :=
  T.efficiency > 1.0e6 ∧ T.colonyCount > 100

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse