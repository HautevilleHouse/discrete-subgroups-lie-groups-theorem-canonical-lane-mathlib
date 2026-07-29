import DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.LieGroupFoundation

/-!
# Riemannian Symmetric Spaces Package
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure RiemannianSymmetricSpacePackage (G : LieGroupFoundationPackage) where
  symmetricSpaceStructure : Prop
  rankDetermined : Prop
  curvatureSign : Prop
  dualityProperties : Prop

structure RiemannianSymmetricSpaceEvidence {G : LieGroupFoundationPackage} (R : RiemannianSymmetricSpacePackage G) where
  symmetricSpaceStructureClosed : R.symmetricSpaceStructure
  rankDeterminedClosed : R.rankDetermined
  curvatureSignClosed : R.curvatureSign
  dualityPropertiesClosed : R.dualityProperties

def RiemannianSymmetricSpaceClosed {G : LieGroupFoundationPackage} (R : RiemannianSymmetricSpacePackage G) : Prop :=
  R.symmetricSpaceStructure ∧ R.rankDetermined ∧ R.curvatureSign ∧ R.dualityProperties

theorem riemannian_symmetric_space_closed_from_evidence {G : LieGroupFoundationPackage} (R : RiemannianSymmetricSpacePackage G) (E : RiemannianSymmetricSpaceEvidence R) : RiemannianSymmetricSpaceClosed R := by
  exact And.intro E.symmetricSpaceStructureClosed (And.intro E.rankDeterminedClosed (And.intro E.curvatureSignClosed E.dualityPropertiesClosed))

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse