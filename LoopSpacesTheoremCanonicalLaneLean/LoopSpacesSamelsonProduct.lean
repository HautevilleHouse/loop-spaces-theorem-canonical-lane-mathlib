import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure SamelsonProductPackage (G : FundamentalGroupoidPackage) where
  loopSpace : Type u
  productMap : loopSpace → loopSpace → loopSpace
  homotopyAssociative : Prop
  homotopyCommutative : Prop
  relationToWhitehead : Prop

structure SamelsonProductEvidence {G : FundamentalGroupoidPackage}
    (S : SamelsonProductPackage G) where
  homotopyAssociativeClosed : S.homotopyAssociative
  homotopyCommutativeClosed : S.homotopyCommutative
  relationToWhiteheadClosed : S.relationToWhitehead

def SamelsonProductClosed {G : FundamentalGroupoidPackage}
    (S : SamelsonProductPackage G) : Prop :=
  S.homotopyAssociative ∧ S.homotopyCommutative ∧ S.relationToWhitehead

theorem samelson_product_closed_from_evidence
    {G : FundamentalGroupoidPackage} (S : SamelsonProductPackage G)
    (E : SamelsonProductEvidence S) : SamelsonProductClosed S := by
  exact And.intro E.homotopyAssociativeClosed
    (And.intro E.homotopyCommutativeClosed E.relationToWhiteheadClosed)

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse