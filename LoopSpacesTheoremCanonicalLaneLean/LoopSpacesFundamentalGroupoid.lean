import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure FundamentalGroupoidPackage where
  baseSpace : Type u
  basePoint : baseSpace
  pathSpace : Type v
  homotopyRelation : pathSpace → pathSpace → Prop
  groupoidComposition : pathSpace → pathSpace → pathSpace
  associativity : Prop
  identityExistence : Prop
  inverseExistence : Prop

structure FundamentalGroupoidEvidence (G : FundamentalGroupoidPackage) where
  associativityClosed : G.associativity
  identityExistenceClosed : G.identityExistence
  inverseExistenceClosed : G.inverseExistence

def FundamentalGroupoidClosed (G : FundamentalGroupoidPackage) : Prop :=
  G.associativity ∧ G.identityExistence ∧ G.inverseExistence

theorem fundamental_groupoid_closed_from_evidence
    (G : FundamentalGroupoidPackage) (E : FundamentalGroupoidEvidence G) :
    FundamentalGroupoidClosed G := by
  exact And.intro E.associativityClosed
    (And.intro E.identityExistenceClosed E.inverseExistenceClosed)

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse