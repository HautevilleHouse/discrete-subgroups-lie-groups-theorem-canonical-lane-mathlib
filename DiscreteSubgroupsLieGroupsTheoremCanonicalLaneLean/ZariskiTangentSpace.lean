import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean.LieGroupZariskiClosure

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean

structure ZariskiTangentSpacePackage {G : LieGroupPackage} where
  tangentSpace : Type u
  vectorSpaceStructure : Prop
  bracketOperation : Prop
  linearRepresentation : Prop

structure ZariskiTangentSpaceEvidence {G : LieGroupPackage} (Z : ZariskiTangentSpacePackage G) where
  vectorSpaceStructureClosed : Z.vectorSpaceStructure
  bracketOperationClosed : Z.bracketOperation
  linearRepresentationClosed : Z.linearRepresentation

def ZariskiTangentSpaceClosed {G : LieGroupPackage} (Z : ZariskiTangentSpacePackage G) : Prop :=
  Z.vectorSpaceStructure ∧ Z.bracketOperation ∧ Z.linearRepresentation

theorem zariski_tangent_space_closed_from_evidence {G : LieGroupPackage} (Z : ZariskiTangentSpacePackage G) (E : ZariskiTangentSpaceEvidence Z) : ZariskiTangentSpaceClosed Z := by
  exact And.intro E.vectorSpaceStructureClosed (And.intro E.bracketOperationClosed E.linearRepresentationClosed)

end DiscreteSubgroupsLieGroupsTheoremCanonicalLaneLean
end HautevilleHouse