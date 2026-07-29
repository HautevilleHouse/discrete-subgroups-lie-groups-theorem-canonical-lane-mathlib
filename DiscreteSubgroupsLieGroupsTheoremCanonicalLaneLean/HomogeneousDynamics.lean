import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure HomogeneousDynamics where
  homogeneousSpace : Type u
  lattice : LatticeCriterion
  flow : homogeneousSpace → homogeneousSpace
  unipotentFlow : Prop
  mixingProperties : Prop
  equidistribution : Prop
  RatnerProperty : Prop

structure HomogeneousDynamicsEvidence (H : HomogeneousDynamics) where
  unipotentFlowClosed : H.unipotentFlow
  mixingPropertiesClosed : H.mixingProperties
  equidistributionClosed : H.equidistribution
  RatnerPropertyClosed : H.RatnerProperty

def HomogeneousDynamicsClosed (H : HomogeneousDynamics) : Prop :=
  H.unipotentFlow ∧ H.mixingProperties ∧ H.equidistribution ∧ H.RatnerProperty

theorem homogeneous_dynamics_closed_from_evidence (H : HomogeneousDynamics) (E : HomogeneousDynamicsEvidence H) :
    HomogeneousDynamicsClosed H := by
  exact And.intro E.unipotentFlowClosed
    (And.intro E.mixingPropertiesClosed
      (And.intro E.equidistributionClosed E.RatnerPropertyClosed))

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse