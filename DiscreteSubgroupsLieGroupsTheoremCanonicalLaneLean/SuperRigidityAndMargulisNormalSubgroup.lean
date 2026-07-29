import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure SuperRigidityPackage where
  linearRepresentation : Prop
  algebraicSuperRigidity : Prop
  normalSubgroupStructure : Prop
  margulisAlternative : Prop
  zariskiDense : Prop

structure SuperRigidityEvidence (S : SuperRigidityPackage) where
  linearRepresentationClosed : S.linearRepresentation
  algebraicSuperRigidityClosed : S.algebraicSuperRigidity
  normalSubgroupStructureClosed : S.normalSubgroupStructure
  margulisAlternativeClosed : S.margulisAlternative
  zariskiDenseClosed : S.zariskiDense

def SuperRigidityClosed (S : SuperRigidityPackage) : Prop :=
  S.linearRepresentation ∧ S.algebraicSuperRigidity ∧
  S.normalSubgroupStructure ∧ S.margulisAlternative ∧ S.zariskiDense

theorem super_rigidity_closed_from_evidence (S : SuperRigidityPackage) (E : SuperRigidityEvidence S) :
    SuperRigidityClosed S := by
  exact And.intro E.linearRepresentationClosed
    (And.intro E.algebraicSuperRigidityClosed
      (And.intro E.normalSubgroupStructureClosed
        (And.intro E.margulisAlternativeClosed E.zariskiDenseClosed)))

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse