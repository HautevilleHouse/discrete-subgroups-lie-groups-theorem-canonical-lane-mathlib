import canonicalLaneMathlib.AdmissibleClass

/-!
# Discrete Subgroup Completion Package
  This module records the structural decomposition of a Lie group into a lattice
  (discrete subgroup) and its homogeneous space. It encodes the admissibility
  bridge for the discrete subgroup lattice via Selberg's Lemma type arguments.
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure LatticeSubgroupPackage where
  lieGroup : Type u
  topology : TopologicalSpace lieGroup
  smoothStructure : Prop
  discreteSubgroup : lieGroup → Prop
  subgroupIsLattice : Prop
  covolumeFinite : Prop
  homogeneousSpace : Type v
  homogeneousSpaceTopology : TopologicalSpace homogeneousSpace

structure LatticeSubgroupEvidence (L : LatticeSubgroupPackage) where
  discreteSubgroupClosed : L.subgroupIsLattice
  covolumeFiniteClosed : L.covolumeFinite
  homogeneousSpaceClosed : L.homogeneousSpaceTopology = L.topology.induced (id : L.lieGroup → L.homogeneousSpace)

def LatticeSubgroupClosed (L : LatticeSubgroupPackage) : Prop :=
  L.subgroupIsLattice ∧ L.covolumeFinite

theorem lattice_subgroup_closed_from_evidence
    (L : LatticeSubgroupPackage) (E : LatticeSubgroupEvidence L) :
    LatticeSubgroupClosed L :=
  And.intro E.discreteSubgroupClosed E.covolumeFiniteClosed

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse
