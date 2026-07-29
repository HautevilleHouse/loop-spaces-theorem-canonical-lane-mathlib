import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure AdamsOperationsPackage where
  adamsOperation : ℕ → Type u
  adamsOperationDefined : Prop
  compatibilityWithLoopProduct : Prop
  homotopyGroupsComputed : Prop

structure AdamsOperationsEvidence (A : AdamsOperationsPackage) where
  adamsOperationDefinedClosed : A.adamsOperationDefined
  compatibilityWithLoopProductClosed : A.compatibilityWithLoopProduct
  homotopyGroupsComputedClosed : A.homotopyGroupsComputed

def AdamsOperationsClosed (A : AdamsOperationsPackage) : Prop :=
  A.adamsOperationDefined ∧ A.compatibilityWithLoopProduct ∧ A.homotopyGroupsComputed

theorem adams_operations_closed_from_evidence
    (A : AdamsOperationsPackage) (E : AdamsOperationsEvidence A) :
    AdamsOperationsClosed A := by
  exact And.intro E.adamsOperationDefinedClosed
    (And.intro E.compatibilityWithLoopProductClosed E.homotopyGroupsComputedClosed)

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse