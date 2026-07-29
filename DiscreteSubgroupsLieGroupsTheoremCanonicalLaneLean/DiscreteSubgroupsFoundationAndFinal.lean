import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure DiscreteSubgroupsFoundation where
  lieGroup : Type
  topology : TopologicalSpace lieGroup
  discreteSubgroup : Prop
  homogeneousSpace : Prop
  quotientCompact : Prop

structure DiscreteSubgroupsFoundationEvidence (F : DiscreteSubgroupsFoundation) where
  discreteSubgroupClosed : F.discreteSubgroup
  homogeneousSpaceClosed : F.homogeneousSpace
  quotientCompactClosed : F.quotientCompact

def DiscreteSubgroupsFoundationClosed (F : DiscreteSubgroupsFoundation) : Prop :=
  F.discreteSubgroup ∧ F.homogeneousSpace ∧ F.quotientCompact

theorem discrete_subgroups_foundation_closed_from_evidence (F : DiscreteSubgroupsFoundation) (E : DiscreteSubgroupsFoundationEvidence F) :
    DiscreteSubgroupsFoundationClosed F := by
  exact And.intro E.discreteSubgroupClosed (And.intro E.homogeneousSpaceClosed E.quotientCompactClosed)

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse