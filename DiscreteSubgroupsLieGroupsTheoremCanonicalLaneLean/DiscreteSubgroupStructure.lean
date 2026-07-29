import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure LieGroupPackage where
  carrier : Type u
  smoothStructure : Type v
  groupOperations : Type w
  multiplicationSmooth : Prop
  inversionSmooth : Prop
  identityExists : Prop

structure LieGroupEvidence (G : LieGroupPackage) where
  multiplicationSmoothClosed : G.multiplicationSmooth
  inversionSmoothClosed : G.inversionSmooth
  identityExistsClosed : G.identityExists

def LieGroupClosed (G : LieGroupPackage) : Prop :=
  G.multiplicationSmooth ∧ G.inversionSmooth ∧ G.identityExists

theorem lie_group_closed_from_evidence (G : LieGroupPackage) (E : LieGroupEvidence G) :
    LieGroupClosed G := by
  exact And.intro E.multiplicationSmoothClosed (And.intro E.inversionSmoothClosed E.identityExistsClosed)

structure DiscreteSubgroupStructure (G : LieGroupPackage) where
  underlyingGroup : Type u
  groupOperations : Type v
  subgroupEmbedding : underlyingGroup → G.carrier
  discreteTopology : Prop
  subgroupLaws : Prop

def DiscreteSubgroupClosed {G : LieGroupPackage} (D : DiscreteSubgroupStructure G) : Prop :=
  D.discreteTopology ∧ D.subgroupLaws

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse