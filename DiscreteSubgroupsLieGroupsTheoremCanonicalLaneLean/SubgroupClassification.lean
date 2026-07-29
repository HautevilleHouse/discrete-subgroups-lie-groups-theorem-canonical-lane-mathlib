import DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.Superrigidity

/-!
# Subgroup Classification Package
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure SubgroupClassificationPackage {G : LieGroupFoundationPackage} {R : RiemannianSymmetricSpacePackage G} {A : ArithmeticLatticesPackage R} {S : SuperrigidityPackage A} (E : EndpointClassificationPackage S) where
  arithmeticCaseHandled : Prop
  nonArithmeticCaseHandled : Prop
  noncompactCaseHandled : Prop
  classificationComplete : Prop

structure SubgroupClassificationEvidence {G : LieGroupFoundationPackage} {R : RiemannianSymmetricSpacePackage G} {A : ArithmeticLatticesPackage R} {S : SuperrigidityPackage A} {E : EndpointClassificationPackage S} (C : SubgroupClassificationPackage E) where
  arithmeticCaseHandledClosed : C.arithmeticCaseHandled
  nonArithmeticCaseHandledClosed : C.nonArithmeticCaseHandled
  noncompactCaseHandledClosed : C.noncompactCaseHandled
  classificationCompleteClosed : C.classificationComplete

def SubgroupClassificationClosed {G : LieGroupFoundationPackage} {R : RiemannianSymmetricSpacePackage G} {A : ArithmeticLatticesPackage R} {S : SuperrigidityPackage A} {E : EndpointClassificationPackage S} (C : SubgroupClassificationPackage E) : Prop :=
  C.arithmeticCaseHandled ∧ C.nonArithmeticCaseHandled ∧ C.noncompactCaseHandled ∧ C.classificationComplete

theorem subgroup_classification_closed_from_evidence {G : LieGroupFoundationPackage} {R : RiemannianSymmetricSpacePackage G} {A : ArithmeticLatticesPackage R} {S : SuperrigidityPackage A} {E : EndpointClassificationPackage S} (C : SubgroupClassificationPackage E) (Ev : SubgroupClassificationEvidence C) : SubgroupClassificationClosed C := by
  exact And.intro Ev.arithmeticCaseHandledClosed (And.intro Ev.nonArithmeticCaseHandledClosed (And.intro Ev.noncompactCaseHandledClosed Ev.classificationCompleteClosed))

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse