import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.DiscreteSubgroupStruct

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure ArithmeticSubgroupPackage (G : Type u) [TopologicalSpace G] [Group G] (lieG : LieGroup G) where
  discreteSubgroup : DiscreteSubgroup G
  algebraicGroupDefinedOverQ : Prop
  congruenceSubgroupProperty : Prop
  finiteIndexInIntegralPoints : Prop

structure ArithmeticSubgroupEvidence {G : Type u} [TopologicalSpace G] [Group G] {lieG : LieGroup G}
    (A : ArithmeticSubgroupPackage G lieG) where
  algebraicGroupDefinedOverQClosed : A.algebraicGroupDefinedOverQ
  congruenceSubgroupPropertyClosed : A.congruenceSubgroupProperty
  finiteIndexInIntegralPointsClosed : A.finiteIndexInIntegralPoints

def ArithmeticSubgroupClosed {G : Type u} [TopologicalSpace G] [Group G] {lieG : LieGroup G}
    (A : ArithmeticSubgroupPackage G lieG) : Prop :=
  A.algebraicGroupDefinedOverQ ∧ A.congruenceSubgroupProperty ∧ A.finiteIndexInIntegralPoints

theorem arithmetic_subgroup_closed_from_evidence {G : Type u} [TopologicalSpace G] [Group G] {lieG : LieGroup G}
    (A : ArithmeticSubgroupPackage G lieG) (E : ArithmeticSubgroupEvidence A) : ArithmeticSubgroupClosed A :=
  And.intro E.algebraicGroupDefinedOverQClosed (And.intro E.congruenceSubgroupPropertyClosed E.finiteIndexInIntegralPointsClosed)

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse