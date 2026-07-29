import DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def lieGroupProjection : Projection LieGroupEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem lie_group_projection_idempotent (x : LieGroupEndgameState) :
    lieGroupProjection.toFun (lieGroupProjection.toFun x) = lieGroupProjection.toFun x := by
  exact lieGroupProjection.idempotent x

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse