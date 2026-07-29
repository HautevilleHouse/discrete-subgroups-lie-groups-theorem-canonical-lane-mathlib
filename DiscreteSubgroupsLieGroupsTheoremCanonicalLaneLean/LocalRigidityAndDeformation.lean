import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure LocalRigidityPackage where
  firstCohomologyVanishing : Prop
  weilsLocalRigidity : Prop
  algebraicDeformation : Prop
  zariskiTangentSpace : Prop
  localStability : Prop

structure LocalRigidityEvidence (L : LocalRigidityPackage) where
  firstCohomologyVanishingClosed : L.firstCohomologyVanishing
  weilsLocalRigidityClosed : L.weilsLocalRigidity
  algebraicDeformationClosed : L.algebraicDeformation
  zariskiTangentSpaceClosed : L.zariskiTangentSpace
  localStabilityClosed : L.localStability

def LocalRigidityClosed (L : LocalRigidityPackage) : Prop :=
  L.firstCohomologyVanishing ∧ L.weilsLocalRigidity ∧
  L.algebraicDeformation ∧ L.zariskiTangentSpace ∧ L.localStability

theorem local_rigidity_closed_from_evidence (L : LocalRigidityPackage) (E : LocalRigidityEvidence L) :
    LocalRigidityClosed L := by
  exact And.intro E.firstCohomologyVanishingClosed
    (And.intro E.weilsLocalRigidityClosed
      (And.intro E.algebraicDeformationClosed
        (And.intro E.zariskiTangentSpaceClosed E.localStabilityClosed)))

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse