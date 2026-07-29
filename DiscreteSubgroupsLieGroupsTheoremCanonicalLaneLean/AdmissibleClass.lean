import DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LieGroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LieGroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse