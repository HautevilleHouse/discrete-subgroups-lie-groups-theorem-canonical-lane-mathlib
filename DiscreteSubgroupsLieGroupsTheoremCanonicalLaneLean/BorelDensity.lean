import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.DiscreteSubgroupStructure

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure BorelDensityPackage {G : LieGroupPackage} (D : DiscreteSubgroupStructure G) where
  derivedGroup : Prop
  ZariskiDenseSubgroup : Prop
  normalSubgroupStructure : Prop
  densityConclusion : Prop

structure BorelDensityEvidence {G : LieGroupPackage} {D : DiscreteSubgroupStructure G} (B : BorelDensityPackage D) where
  derivedGroupClosed : B.derivedGroup
  ZariskiDenseSubgroupClosed : B.ZariskiDenseSubgroup
  normalSubgroupStructureClosed : B.normalSubgroupStructure
  densityConclusionClosed : B.densityConclusion

def BorelDensityClosed {G : LieGroupPackage} {D : DiscreteSubgroupStructure G} (B : BorelDensityPackage D) : Prop :=
  B.derivedGroup ∧ B.ZariskiDenseSubgroup ∧ B.normalSubgroupStructure ∧ B.densityConclusion

theorem borel_density_closed_from_evidence {G : LieGroupPackage} {D : DiscreteSubgroupStructure G} (B : BorelDensityPackage D) (E : BorelDensityEvidence B) : BorelDensityClosed B := by
  exact And.intro E.derivedGroupClosed (And.intro E.ZariskiDenseSubgroupClosed (And.intro E.normalSubgroupStructureClosed E.densityConclusionClosed))

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse