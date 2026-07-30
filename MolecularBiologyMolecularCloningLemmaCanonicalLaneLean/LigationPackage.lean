import HautevilleHouse.MolecularBiologyMolecularCloningLemmaCanonicalLaneLean.RestrictionEnzymePackage

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure LigationPackage {A : AdmissibleClass}
    (R : RestrictionEnzymePackage A) where
  compatibleEnds : Prop
  dnaLigaseActivity : Prop
  covalentBondFormation : Prop
  compatibleEndsTerm : compatibleEnds
  dnaLigaseActivityTerm : dnaLigaseActivity
  covalentBondFormationTerm : covalentBondFormation

structure LigationEvidence {A : AdmissibleClass}
    {R : RestrictionEnzymePackage A} (L : LigationPackage R) where
  compatibleEndsClosed : L.compatibleEnds
  dnaLigaseActivityClosed : L.dnaLigaseActivity
  covalentBondFormationClosed : L.covalentBondFormation

def LigationClosed {A : AdmissibleClass}
    {R : RestrictionEnzymePackage A} (L : LigationPackage R) : Prop :=
  L.compatibleEnds ∧ L.dnaLigaseActivity ∧ L.covalentBondFormation

theorem ligation_closed_from_evidence
    {A : AdmissibleClass} {R : RestrictionEnzymePackage A}
    (L : LigationPackage R) (E : LigationEvidence L) : LigationClosed L := by
  exact And.intro E.compatibleEndsClosed
    (And.intro E.dnaLigaseActivityClosed E.covalentBondFormationClosed)

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse
