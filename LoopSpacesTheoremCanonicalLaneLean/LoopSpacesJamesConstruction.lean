import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure JamesConstructionPackage (X : Type u) where
  reducedProduct : Type v
  jamesMap : X → reducedProduct
  homotopyEquivalenceWithLoopSuspension : Prop
  filtration : ℕ → Type w
  approximationTheorem : Prop

structure JamesConstructionEvidence (X : Type u)
    (J : JamesConstructionPackage X) where
  homotopyEquivalenceWithLoopSuspensionClosed : J.homotopyEquivalenceWithLoopSuspension
  approximationTheoremClosed : J.approximationTheorem

def JamesConstructionClosed (X : Type u) (J : JamesConstructionPackage X) : Prop :=
  J.homotopyEquivalenceWithLoopSuspension ∧ J.approximationTheorem

theorem james_construction_closed_from_evidence
    (X : Type u) (J : JamesConstructionPackage X)
    (E : JamesConstructionEvidence X J) : JamesConstructionClosed X J := by
  exact And.intro E.homotopyEquivalenceWithLoopSuspensionClosed
    E.approximationTheoremClosed

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse