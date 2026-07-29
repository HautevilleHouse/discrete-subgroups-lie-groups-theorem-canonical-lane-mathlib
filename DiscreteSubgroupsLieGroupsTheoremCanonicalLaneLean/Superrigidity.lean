import DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.ArithmeticLattices

/-!
# Superrigidity Package
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure SuperrigidityPackage {G : LieGroupFoundationPackage} {R : RiemannianSymmetricSpacePackage G} {A : ArithmeticLatticesPackage R} where
  representationExtension : Prop
  cocycleSuperrigidity : Prop
  margulisNormalSubgroup : Prop
  latticeRigidity : Prop

structure SuperrigidityEvidence {G : LieGroupFoundationPackage} {R : RiemannianSymmetricSpacePackage G} {A : ArithmeticLatticesPackage R} (S : SuperrigidityPackage A) where
  representationExtensionClosed : S.representationExtension
  cocycleSuperrigidityClosed : S.cocycleSuperrigidity
  margulisNormalSubgroupClosed : S.margulisNormalSubgroup
  latticeRigidityClosed : S.latticeRigidity

def SuperrigidityClosed {G : LieGroupFoundationPackage} {R : RiemannianSymmetricSpacePackage G} {A : ArithmeticLatticesPackage R} (S : SuperrigidityPackage A) : Prop :=
  S.representationExtension ∧ S.cocycleSuperrigidity ∧ S.margulisNormalSubgroup ∧ S.latticeRigidity

theorem superrigidity_closed_from_evidence {G : LieGroupFoundationPackage} {R : RiemannianSymmetricSpacePackage G} {A : ArithmeticLatticesPackage R} (S : SuperrigidityPackage A) (E : SuperrigidityEvidence S) : SuperrigidityClosed S := by
  exact And.intro E.representationExtensionClosed (And.intro E.cocycleSuperrigidityClosed (And.intro E.margulisNormalSubgroupClosed E.latticeRigidityClosed))

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse