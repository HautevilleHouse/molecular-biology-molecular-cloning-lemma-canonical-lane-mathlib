import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningLemmaCanonicalLaneLean

structure ReplicationOriginPackage where
  originSequence : Prop
  initiatorBinding : Prop
  unwindingMechanism : Prop
  bidirectionalReplication : Prop
  originEfficiency : Prop

structure ReplicationOriginEvidence (R : ReplicationOriginPackage) where
  originSequenceClosed : R.originSequence
  initiatorBindingClosed : R.initiatorBinding
  unwindingMechanismClosed : R.unwindingMechanism
  bidirectionalReplicationClosed : R.bidirectionalReplication
  originEfficiencyClosed : R.originEfficiency

def ReplicationOriginClosed (R : ReplicationOriginPackage) : Prop :=
  R.originSequence ∧ R.initiatorBinding ∧ R.unwindingMechanism ∧ R.bidirectionalReplication ∧ R.originEfficiency

theorem replication_origin_closed_from_evidence (R : ReplicationOriginPackage)
    (E : ReplicationOriginEvidence R) : ReplicationOriginClosed R := by
  exact And.intro E.originSequenceClosed
    (And.intro E.initiatorBindingClosed
      (And.intro E.unwindingMechanismClosed
        (And.intro E.bidirectionalReplicationClosed E.originEfficiencyClosed)))

end MolecularBiologyMolecularCloningLemmaCanonicalLaneLean
end HautevilleHouse
