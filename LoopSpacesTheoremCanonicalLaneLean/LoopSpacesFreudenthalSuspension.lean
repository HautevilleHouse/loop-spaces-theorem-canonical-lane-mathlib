import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure FreudenthalSuspensionPackage where
  suspensionFunctor : Type u → Type u
  loopFunctor : Type u → Type u
  adjunction : Prop
  connectivityRange : ℕ
  homotopyGroupIsomorphism : Prop

structure FreudenthalSuspensionEvidence (F : FreudenthalSuspensionPackage) where
  adjunctionClosed : F.adjunction
  homotopyGroupIsomorphismClosed : F.homotopyGroupIsomorphism

def FreudenthalSuspensionClosed (F : FreudenthalSuspensionPackage) : Prop :=
  F.adjunction ∧ F.homotopyGroupIsomorphism

theorem freudenthal_suspension_closed_from_evidence
    (F : FreudenthalSuspensionPackage) (E : FreudenthalSuspensionEvidence F) :
    FreudenthalSuspensionClosed F := by
  exact And.intro E.adjunctionClosed E.homotopyGroupIsomorphismClosed

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse