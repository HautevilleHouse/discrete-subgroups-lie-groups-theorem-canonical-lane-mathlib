import DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.RiemannianSymmetricSpaces

/-!
# Arithmetic Lattices Package
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure ArithmeticLatticesPackage {G : LieGroupFoundationPackage} {R : RiemannianSymmetricSpacePackage G} where
  algebraicGroupDefinedOverQ : Prop
  integralStructureExists : Prop
  covolumeFinite : Prop
  congruenceSubgroupProperty : Prop

structure ArithmeticLatticesEvidence {G : LieGroupFoundationPackage} {R : RiemannianSymmetricSpacePackage G} (A : ArithmeticLatticesPackage R) where
  algebraicGroupDefinedOverQClosed : A.algebraicGroupDefinedOverQ
  integralStructureExistsClosed : A.integralStructureExists
  covolumeFiniteClosed : A.covolumeFinite
  congruenceSubgroupPropertyClosed : A.congruenceSubgroupProperty

def ArithmeticLatticesClosed {G : LieGroupFoundationPackage} {R : RiemannianSymmetricSpacePackage G} (A : ArithmeticLatticesPackage R) : Prop :=
  A.algebraicGroupDefinedOverQ ∧ A.integralStructureExists ∧ A.covolumeFinite ∧ A.congruenceSubgroupProperty

theorem arithmetic_lattices_closed_from_evidence {G : LieGroupFoundationPackage} {R : RiemannianSymmetricSpacePackage G} (A : ArithmeticLatticesPackage R) (E : ArithmeticLatticesEvidence A) : ArithmeticLatticesClosed A := by
  exact And.intro E.algebraicGroupDefinedOverQClosed (And.intro E.integralStructureExistsClosed (And.intro E.covolumeFiniteClosed E.congruenceSubgroupPropertyClosed))

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse