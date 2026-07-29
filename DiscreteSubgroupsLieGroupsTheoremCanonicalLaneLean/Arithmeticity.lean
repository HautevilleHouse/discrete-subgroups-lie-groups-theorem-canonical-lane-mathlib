import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure Arithmeticity where
  lattice : LatticeCriterion
  ambientAlgebraicGroup : Type u
  integralStructure : Prop
  commensurator : Prop
  congruenceSubgroups : Prop
  superrigidityUsed : Bool
  arithmeticLattice : Prop

structure ArithmeticityEvidence (A : Arithmeticity) where
  integralStructureClosed : A.integralStructure
  commensuratorClosed : A.commensurator
  congruenceSubgroupsClosed : A.congruenceSubgroups
  arithmeticLatticeClosed : A.arithmeticLattice

def ArithmeticityClosed (A : Arithmeticity) : Prop :=
  A.integralStructure ∧ A.commensurator ∧ A.congruenceSubgroups ∧ A.arithmeticLattice

theorem arithmeticity_closed_from_evidence (A : Arithmeticity) (E : ArithmeticityEvidence A) : ArithmeticityClosed A := by
  exact And.intro E.integralStructureClosed
    (And.intro E.commensuratorClosed
      (And.intro E.congruenceSubgroupsClosed E.arithmeticLatticeClosed))

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse