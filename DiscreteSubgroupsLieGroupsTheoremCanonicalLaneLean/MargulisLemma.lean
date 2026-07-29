import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.DiscreteSubgroupStructure

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure MargulisLemmaPackage {G : LieGroupPackage} (D : DiscreteSubgroupStructure G) where
  semisimpleCondition : Prop
  nilpotentSubgroupExists : Prop
  boundOnGenerators : Prop

structure MargulisLemmaEvidence {G : LieGroupPackage} {D : DiscreteSubgroupStructure G} (M : MargulisLemmaPackage D) where
  semisimpleConditionClosed : M.semisimpleCondition
  nilpotentSubgroupExistsClosed : M.nilpotentSubgroupExists
  boundOnGeneratorsClosed : M.boundOnGenerators

def MargulisLemmaClosed {G : LieGroupPackage} {D : DiscreteSubgroupStructure G} (M : MargulisLemmaPackage D) : Prop :=
  M.semisimpleCondition ∧ M.nilpotentSubgroupExists ∧ M.boundOnGenerators

theorem margulis_lemma_closed_from_evidence {G : LieGroupPackage} {D : DiscreteSubgroupStructure G} (M : MargulisLemmaPackage D) (E : MargulisLemmaEvidence M) : MargulisLemmaClosed M := by
  exact And.intro E.semisimpleConditionClosed (And.intro E.nilpotentSubgroupExistsClosed E.boundOnGeneratorsClosed)

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse