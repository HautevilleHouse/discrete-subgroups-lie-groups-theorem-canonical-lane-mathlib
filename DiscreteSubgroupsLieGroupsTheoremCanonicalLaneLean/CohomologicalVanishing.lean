import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure CohomologicalVanishing where
  lattice : LatticeCriterion
  cohomologyGroups : ℕ → Type u
  vanishingDegrees : List ℕ
  coefficientModule : Type v
  reducedCohomology : Prop
  vanishingTheorem : Prop
  BettiNumbers : Prop

structure CohomologicalVanishingEvidence (C : CohomologicalVanishing) where
  reducedCohomologyClosed : C.reducedCohomology
  vanishingTheoremClosed : C.vanishingTheorem
  BettiNumbersClosed : C.BettiNumbers

def CohomologicalVanishingClosed (C : CohomologicalVanishing) : Prop :=
  C.reducedCohomology ∧ C.vanishingTheorem ∧ C.BettiNumbers

theorem cohomological_vanishing_closed_from_evidence (C : CohomologicalVanishing) (E : CohomologicalVanishingEvidence C) :
    CohomologicalVanishingClosed C := by
  exact And.intro E.reducedCohomologyClosed (And.intro E.vanishingTheoremClosed E.BettiNumbersClosed)

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse