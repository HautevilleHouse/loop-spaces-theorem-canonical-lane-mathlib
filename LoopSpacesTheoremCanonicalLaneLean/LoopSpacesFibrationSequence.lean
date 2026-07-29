import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure FibrationSequencePackage (G : FundamentalGroupoidPackage) where
  baseSpace : G.baseSpace
  fiber : Type u
  totalSpace : Type v
  projectionMap : totalSpace → baseSpace
  homotopyLifting : Prop
  longExactSequence : Prop
  connectivityCondition : Prop

structure FibrationSequenceEvidence {G : FundamentalGroupoidPackage}
    (F : FibrationSequencePackage G) where
  homotopyLiftingClosed : F.homotopyLifting
  longExactSequenceClosed : F.longExactSequence
  connectivityConditionClosed : F.connectivityCondition

def FibrationSequenceClosed {G : FundamentalGroupoidPackage}
    (F : FibrationSequencePackage G) : Prop :=
  F.homotopyLifting ∧ F.longExactSequence ∧ F.connectivityCondition

theorem fibration_sequence_closed_from_evidence
    {G : FundamentalGroupoidPackage} (F : FibrationSequencePackage G)
    (E : FibrationSequenceEvidence F) : FibrationSequenceClosed F := by
  exact And.intro E.homotopyLiftingClosed
    (And.intro E.longExactSequenceClosed E.connectivityConditionClosed)

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse