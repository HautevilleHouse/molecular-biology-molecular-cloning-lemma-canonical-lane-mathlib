import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure ColonyScreening where
  screeningMethod : String
  colonyCount : Nat
  positiveClones : Nat
  insertVerification : Prop
  sequencingConfirmed : Prop

def ColonyScreeningClosed (C : ColonyScreening) : Prop :=
  C.positiveClones > 0 ∧ C.sequencingConfirmed

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse