import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure CohomologicalObstructionPackage where
  boundedCohomology : Prop
  eulerClassObstruction : Prop
  milnorWoodInequality : Prop
  maximalRepresentation : Prop
  thickThinDecomposition : Prop

structure CohomologicalObstructionEvidence (C : CohomologicalObstructionPackage) where
  boundedCohomologyClosed : C.boundedCohomology
  eulerClassObstructionClosed : C.eulerClassObstruction
  milnorWoodInequalityClosed : C.milnorWoodInequality
  maximalRepresentationClosed : C.maximalRepresentation
  thickThinDecompositionClosed : C.thickThinDecomposition

def CohomologicalObstructionClosed (C : CohomologicalObstructionPackage) : Prop :=
  C.boundedCohomology ∧ C.eulerClassObstruction ∧
  C.milnorWoodInequality ∧ C.maximalRepresentation ∧ C.thickThinDecomposition

theorem cohomological_obstruction_closed_from_evidence (C : CohomologicalObstructionPackage) (E : CohomologicalObstructionEvidence C) :
    CohomologicalObstructionClosed C := by
  exact And.intro E.boundedCohomologyClosed
    (And.intro E.eulerClassObstructionClosed
      (And.intro E.milnorWoodInequalityClosed
        (And.intro E.maximalRepresentationClosed E.thickThinDecompositionClosed)))

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse