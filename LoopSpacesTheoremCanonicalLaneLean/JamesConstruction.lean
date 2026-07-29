import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure JamesConstructionPackage where
  reducedProduct : Type u
  jamesMapInclusion : Prop
  homotopyEquivalence : Prop
  combinatorialModel : Prop

structure JamesConstructionEvidence (J : JamesConstructionPackage) where
  jamesMapInclusionClosed : J.jamesMapInclusion
  homotopyEquivalenceClosed : J.homotopyEquivalence
  combinatorialModelClosed : J.combinatorialModel

def JamesConstructionClosed (J : JamesConstructionPackage) : Prop :=
  J.jamesMapInclusion ∧ J.homotopyEquivalence ∧ J.combinatorialModel

theorem james_construction_closed_from_evidence
    (J : JamesConstructionPackage) (E : JamesConstructionEvidence J) :
    JamesConstructionClosed J := by
  exact And.intro E.jamesMapInclusionClosed
    (And.intro E.homotopyEquivalenceClosed E.combinatorialModelClosed)

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse