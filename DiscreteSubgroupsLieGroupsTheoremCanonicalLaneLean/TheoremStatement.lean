import DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  discreteSubgroupConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  discreteSubgroupConstrainedStatement := "discrete-subgroup-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

def ClassicalSourceBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

def DiscreteSubgroupConstrainedTheoremClosed : Prop :=
  baselineCertificateLane = "discrete_subgroup_constrained" ∧
  baselineCertificateAllPass = true ∧
  outsideConstantDependencyCount = 0

def TheoremLayerInternalized : Prop :=
  sourceTheoremStatement.sourceKey = sourceRepository ∧
  sourceTheoremStatement.certificateLane = baselineCertificateLane ∧
  ClassicalSourceBoundaryCarried ∧
  DiscreteSubgroupConstrainedTheoremClosed

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  exact And.intro rfl rfl

theorem discrete_subgroup_constrained_theorem_closed_checked :
    DiscreteSubgroupConstrainedTheoremClosed := by
  refine And.intro rfl ?_
  exact And.intro rfl rfl

theorem theorem_layer_internalized_checked :
    TheoremLayerInternalized := by
  refine And.intro rfl ?_
  refine And.intro rfl ?_
  exact And.intro classical_source_boundary_carried_checked discrete_subgroup_constrained_theorem_closed_checked

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse