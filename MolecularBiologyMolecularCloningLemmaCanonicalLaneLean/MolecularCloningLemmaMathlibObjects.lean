import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CloningHost where
  carrier : Type
  replicationOrigin : Prop
  selectionMarker : Prop

structure Plasmid where
  host : CloningHost
  insert : Type
  insertStable : Prop
  copyNumber : Nat

structure AdmittedCloningObject where
  plasmid : Plasmid
  hostCompatible : Prop
  insertExpressed : Prop
  cloningVerified : Prop
  conclusion : cloningVerified

structure CloningEndgameState where
  object : AdmittedCloningObject

def CloningWitnessClosed (O : AdmittedCloningObject) : Prop :=
  O.cloningVerified

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse