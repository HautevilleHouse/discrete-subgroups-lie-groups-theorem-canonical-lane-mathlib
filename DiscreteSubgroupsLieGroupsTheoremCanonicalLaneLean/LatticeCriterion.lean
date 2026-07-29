import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure LatticeCriterion where
  discreteSubgroup : Type u
  ambientLieGroup : Type v
  embedding : discreteSubgroup → ambientLieGroup
  discreteTopology : TopologicalSpace discreteSubgroup
  hausdorff : TopologicalSpace.IsTopologicalGroup ambientLieGroup → Prop
  quotientFiniteVolume : Prop
  cocompact : Prop
  discreteEmbedding : Continuous embedding → Prop
  finiteCovolume : Prop
  irreducible : Prop

structure LatticeCriterionEvidence (C : LatticeCriterion) where
  discreteEmbeddingClosed : C.discreteEmbedding
  finiteCovolumeClosed : C.finiteCovolume
  irreducibleClosed : C.irreducible

def LatticeCriterionClosed (C : LatticeCriterion) : Prop :=
  C.discreteEmbedding ∧ C.finiteCovolume ∧ C.irreducible

theorem lattice_criterion_closed_from_evidence (C : LatticeCriterion) (E : LatticeCriterionEvidence C) :
    LatticeCriterionClosed C := by
  exact And.intro E.discreteEmbeddingClosed (And.intro E.finiteCovolumeClosed E.irreducibleClosed)

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse