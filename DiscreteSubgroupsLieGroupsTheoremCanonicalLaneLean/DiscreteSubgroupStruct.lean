import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure DiscreteSubgroup (G : Type u) [TopologicalSpace G] [Group G] where
  carrier : Set G
  isSubgroup : IsSubgroup carrier
  discrete : DiscreteTopology (Subtype carrier)

structure LieGroup (G : Type u) [TopologicalSpace G] [Group G] where
  smoothManifold : SmoothManifold 𝓘(ℝ, G) G
  smoothMul : Smooth (𝓘(ℝ, G).prod 𝓘(ℝ, G)) 𝓘(ℝ, G) (fun (x, y) : G × G => x * y)
  smoothInv : Smooth 𝓘(ℝ, G) 𝓘(ℝ, G) (fun x : G => x⁻¹)

structure AdmissibleDiscreteSubgroup (G : Type u) [TopologicalSpace G] [Group G] (lieG : LieGroup G) where
  subgroup : DiscreteSubgroup G
  cocompact : IsCocompact (subgroup.carrier)
  torsionFree : ∀ g : subgroup.carrier, g ≠ 1 → ∀ n : ℕ, n ≥ 1 → g^n ≠ 1

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse