import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure RigidityTheorem where
  lattice : LatticeCriterion
  ambientGroup : Type u
  rankCondition : Nat
  superrigidity : Prop
  arithmeticity : Prop
  cohomologicalVanishing : Prop
  ergodicActions : Prop

structure RigidityEvidence (R : RigidityTheorem) where
  latticeClosed : LatticeCriterionClosed R.lattice
  superrigidityClosed : R.superrigidity
  arithmeticityClosed : R.arithmeticity
  cohomologicalVanishingClosed : R.cohomologicalVanishing
  ergodicActionsClosed : R.ergodicActions

def RigidityClosed (R : RigidityTheorem) : Prop :=
  LatticeCriterionClosed R.lattice ∧ R.superrigidity ∧ R.arithmeticity ∧ R.cohomologicalVanishing ∧ R.ergodicActions

theorem rigidity_closed_from_evidence (R : RigidityTheorem) (E : RigidityEvidence R) : RigidityClosed R := by
  exact And.intro E.latticeClosed
    (And.intro E.superrigidityClosed
      (And.intro E.arithmeticityClosed
        (And.intro E.cohomologicalVanishingClosed E.ergodicActionsClosed)))

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse