import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure WhiteheadProductPackage where
  sphereIndex : ℕ
  attachingMap : Type u
  productDefinition : Type v
  homotopyGroupMultiplication : Prop
  jacobiIdentity : Prop
  naturality : Prop

structure WhiteheadProductEvidence (W : WhiteheadProductPackage) where
  homotopyGroupMultiplicationClosed : W.homotopyGroupMultiplication
  jacobiIdentityClosed : W.jacobiIdentity
  naturalityClosed : W.naturality

def WhiteheadProductClosed (W : WhiteheadProductPackage) : Prop :=
  W.homotopyGroupMultiplication ∧ W.jacobiIdentity ∧ W.naturality

theorem whitehead_product_closed_from_evidence
    (W : WhiteheadProductPackage) (E : WhiteheadProductEvidence W) :
    WhiteheadProductClosed W := by
  exact And.intro E.homotopyGroupMultiplicationClosed
    (And.intro E.jacobiIdentityClosed E.naturalityClosed)

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse