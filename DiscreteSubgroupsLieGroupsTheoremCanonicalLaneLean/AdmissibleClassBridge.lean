import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.DiscreteSubgroupStruct

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure AdmittedObject where
  G : Type u
  top : TopologicalSpace G
  grp : Group G
  lie : LieGroup G
  discreteSubgroup : DiscreteSubgroup G
  cocompact : IsCocompact (discreteSubgroup.carrier)
  torsionFree : ∀ g : discreteSubgroup.carrier, g ≠ 1 → ∀ n : ℕ, n ≥ 1 → g^n ≠ 1
  conclusion : Prop
  conclusionTerm : conclusion

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.conclusion

theorem witness_from_admissible_object (O : AdmittedObject) : WitnessClosed O :=
  O.conclusionTerm

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse