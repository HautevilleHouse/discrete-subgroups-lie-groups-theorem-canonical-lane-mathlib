import DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LieGroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse