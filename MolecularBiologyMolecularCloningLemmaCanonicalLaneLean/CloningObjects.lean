import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure CloningSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CloningAdmittedObject where
  space : CloningSpace
  plasmidReplication : Prop
  restrictionEnzymeDigest : Prop
  ligationAssembly : Prop
  transformedHost : Prop
  conclusion : transformedHost

structure CloningEndgameState where
  object : CloningAdmittedObject

def CloningWitnessClosed (O : CloningAdmittedObject) : Prop :=
  O.transformedHost

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse