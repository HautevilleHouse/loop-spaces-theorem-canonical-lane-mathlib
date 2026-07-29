import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure LoopSpaceDecompositionPackage where
  freeLoopSpace : Type u
  basedLoopSpace : Type v
  evaluationFibration : Prop
  homotopyEquivDecomposition : Prop
  freudenthalSuspensionApplied : Prop

structure LoopSpaceDecompositionEvidence (L : LoopSpaceDecompositionPackage) where
  evaluationFibrationClosed : L.evaluationFibration
  homotopyEquivDecompositionClosed : L.homotopyEquivDecomposition
  freudenthalSuspensionAppliedClosed : L.freudenthalSuspensionApplied

def LoopSpaceDecompositionClosed (L : LoopSpaceDecompositionPackage) : Prop :=
  L.evaluationFibration ∧ L.homotopyEquivDecomposition ∧ L.freudenthalSuspensionApplied

theorem loop_space_decomposition_closed_from_evidence
    (L : LoopSpaceDecompositionPackage) (E : LoopSpaceDecompositionEvidence L) :
    LoopSpaceDecompositionClosed L := by
  exact And.intro E.evaluationFibrationClosed
    (And.intro E.homotopyEquivDecompositionClosed E.freudenthalSuspensionAppliedClosed)

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse