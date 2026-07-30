import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure LigationAssemblyPackage where
  dnaLigase : Prop
  compatibleEnds : Prop
  vectorInsertJunction : Prop
  recombinantMolecule : Prop
  transformationEfficiency : Prop

structure LigationAssemblyEvidence (L : LigationAssemblyPackage) where
  dnaLigaseClosed : L.dnaLigase
  compatibleEndsClosed : L.compatibleEnds
  vectorInsertJunctionClosed : L.vectorInsertJunction
  recombinantMoleculeClosed : L.recombinantMolecule
  transformationEfficiencyClosed : L.transformationEfficiency

def LigationAssemblyClosed (L : LigationAssemblyPackage) : Prop :=
  L.dnaLigase ∧ L.compatibleEnds ∧ L.vectorInsertJunction ∧ L.recombinantMolecule ∧ L.transformationEfficiency

theorem ligation_assembly_closed_from_evidence (L : LigationAssemblyPackage)
    (E : LigationAssemblyEvidence L) : LigationAssemblyClosed L := by
  exact And.intro E.dnaLigaseClosed
    (And.intro E.compatibleEndsClosed
      (And.intro E.vectorInsertJunctionClosed
        (And.intro E.recombinantMoleculeClosed E.transformationEfficiencyClosed)))

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse
