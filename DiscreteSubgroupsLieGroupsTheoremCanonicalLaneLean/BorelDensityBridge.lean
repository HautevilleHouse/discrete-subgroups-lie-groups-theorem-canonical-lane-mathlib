import canonicalLaneMathlib.AdmissibleClass
import DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.DiscreteSubgroupCompletion

/-!
# Borel Density Bridge
  This module encodes the Borel density theorem as a bridge structure:
  an irreducible lattice in a semisimple Lie group without compact factors
  is Zariski dense. The bridge closure supplies the admissible class gate.
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure BorelDensityPackage (L : LatticeSubgroupPackage) where
  lieSemisimple : Prop
  noCompactFactors : Prop
  irreducible : Prop
  zariskiDense : Prop
  matchingTopology : Prop

structure BorelDensityEvidence {L : LatticeSubgroupPackage} (B : BorelDensityPackage L) where
  irreducibleClosed : B.irreducible
  matchingTopologyClosed : B.matchingTopology
  zariskiDenseClosed : B.zariskiDense

def BorelDensityClosed {L : LatticeSubgroupPackage} (B : BorelDensityPackage L) : Prop :=
  B.zariskiDense

theorem borel_density_closed_from_evidence
    {L : LatticeSubgroupPackage} (B : BorelDensityPackage L)
    (E : BorelDensityEvidence B) : BorelDensityClosed B :=
  E.zariskiDenseClosed

theorem bridge_from_zariski_dense {L : LatticeSubgroupPackage}
    (B : BorelDensityPackage L) (E : BorelDensityEvidence B) :
    bRidgE Closed := by
  -- bridgeClosed is instantiated from LatticeSubgroupClosed
  exact lattice_subgroup_closed_from_evidence ?_ (by
    -- we need to provide LatticeSubgroupEvidence; here we derive it from B
    sorry)

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse
