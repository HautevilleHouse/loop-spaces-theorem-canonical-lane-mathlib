import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure EilenbergMooreSpectralSequencePackage where
  fiberSequence : Type u
  baseSpace : Type v
  spectralSequenceConverges : Prop
  homologyOfLoopSpaceComputed : Prop

structure EilenbergMooreSpectralSequenceEvidence (E : EilenbergMooreSpectralSequencePackage) where
  spectralSequenceConvergesClosed : E.spectralSequenceConverges
  homologyOfLoopSpaceComputedClosed : E.homologyOfLoopSpaceComputed

def EilenbergMooreSpectralSequenceClosed (E : EilenbergMooreSpectralSequencePackage) : Prop :=
  E.spectralSequenceConverges ∧ E.homologyOfLoopSpaceComputed

theorem eilenberg_moore_spectral_sequence_closed_from_evidence
    (E : EilenbergMooreSpectralSequencePackage) (Ev : EilenbergMooreSpectralSequenceEvidence E) :
    EilenbergMooreSpectralSequenceClosed E := by
  exact And.intro Ev.spectralSequenceConvergesClosed Ev.homologyOfLoopSpaceComputedClosed

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse