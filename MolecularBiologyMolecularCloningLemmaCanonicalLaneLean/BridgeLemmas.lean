import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CloningWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse