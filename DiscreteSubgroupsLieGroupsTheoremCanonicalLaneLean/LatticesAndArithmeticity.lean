import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure LatticesPackage where
  existsLattice : Prop
  cofiniteVolume : Prop
  uniformDiscrete : Prop
  arithmeticityCriteria : Prop
  superRigidityInput : Prop

structure LatticesEvidence (L : LatticesPackage) where
  existsLatticeClosed : L.existsLattice
  cofiniteVolumeClosed : L.cofiniteVolume
  uniformDiscreteClosed : L.uniformDiscrete
  arithmeticityCriteriaClosed : L.arithmeticityCriteria
  superRigidityInputClosed : L.superRigidityInput

def LatticesClosed (L : LatticesPackage) : Prop :=
  L.existsLattice ∧ L.cofiniteVolume ∧ L.uniformDiscrete ∧
  L.arithmeticityCriteria ∧ L.superRigidityInput

theorem lattices_closed_from_evidence (L : LatticesPackage) (E : LatticesEvidence L) :
    LatticesClosed L := by
  exact And.intro E.existsLatticeClosed
    (And.intro E.cofiniteVolumeClosed
      (And.intro E.uniformDiscreteClosed
        (And.intro E.arithmeticityCriteriaClosed E.superRigidityInputClosed)))

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse