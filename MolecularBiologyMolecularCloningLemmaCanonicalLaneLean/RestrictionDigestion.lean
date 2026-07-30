import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure RestrictionDigestion where
  enzymeName : String
  recognitionSequence : String
  dnaSubstrate : String
  incubationTemperature : Float
  digestionTime : Nat
  completeness : Float

def RestrictionDigestionClosed (R : RestrictionDigestion) : Prop :=
  R.completeness > 0.9 ∧ R.digestionTime > 30

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse