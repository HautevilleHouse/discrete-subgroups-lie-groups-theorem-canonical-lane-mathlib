import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.VolumePackage

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure MostowRigidityPackage {G : LieGroupPackage} (V : VolumePackage G) where
  hyperbolicMetric : Prop
  discreteCovolume : Prop
  isomorphismInducesIsometry : Prop
  cohomologicalConstraints : Prop

structure MostowRigidityEvidence {G : LieGroupPackage} {V : VolumePackage G} (M : MostowRigidityPackage V) where
  hyperbolicMetricClosed : M.hyperbolicMetric
  discreteCovolumeClosed : M.discreteCovolume
  isomorphismInducesIsometryClosed : M.isomorphismInducesIsometry
  cohomologicalConstraintsClosed : M.cohomologicalConstraints

def MostowRigidityClosed {G : LieGroupPackage} {V : VolumePackage G} (M : MostowRigidityPackage V) : Prop :=
  M.hyperbolicMetric ∧ M.discreteCovolume ∧ M.isomorphismInducesIsometry ∧ M.cohomologicalConstraints

theorem mostow_rigidity_closed_from_evidence {G : LieGroupPackage} {V : VolumePackage G} (M : MostowRigidityPackage V) (E : MostowRigidityEvidence M) : MostowRigidityClosed M := by
  exact And.intro E.hyperbolicMetricClosed (And.intro E.discreteCovolumeClosed (And.intro E.isomorphismInducesIsometryClosed E.cohomologicalConstraintsClosed))

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse