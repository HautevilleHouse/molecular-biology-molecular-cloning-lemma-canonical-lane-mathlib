import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure CompetentCell where
  strain : String
  transformationEfficiency : Float
  genotype : String

structure TransformationReaction where
  cells : CompetentCell
  plasmid : PlasmidVector
  heatShockTemperature : Float
  recoveryTime : Nat

def TransformationSuccess (rxn : TransformationReaction) : Prop :=
  rxn.heatShockTemperature > 37.0 ∧
  rxn.heatShockTemperature < 45.0 ∧
  rxn.recoveryTime ≥ 30 ∧
  rxn.cells.transformationEfficiency > 1.0e6

theorem transformation_requires_high_efficiency (rxn : TransformationReaction) :
  TransformationSuccess rxn → rxn.cells.transformationEfficiency > 1.0e6 := by
  intro h
  exact h.2.2.2

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse