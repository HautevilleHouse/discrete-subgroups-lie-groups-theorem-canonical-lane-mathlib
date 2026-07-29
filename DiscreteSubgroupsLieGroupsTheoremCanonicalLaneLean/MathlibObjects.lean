import DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LieGroupSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LieGroupAdmittedObject where
  space : LieGroupSpace
  lieGroupStructure : Prop
  discreteSubgroup : Prop
  latticeProperty : Prop
  uniformizationModel : Type
  uniformizationTopology : TopologicalSpace uniformizationModel
  denseOrFiniteCovolume : Prop
  conclusion : denseOrFiniteCovolume

structure LieGroupEndgameState where
  object : LieGroupAdmittedObject

def LieGroupWitnessClosed (O : LieGroupAdmittedObject) : Prop :=
  O.denseOrFiniteCovolume

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse