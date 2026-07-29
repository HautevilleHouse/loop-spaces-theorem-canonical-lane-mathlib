import canonicalLaneMathlib.AdmissibleClass
import LoopSpacesTheoremCanonicalLaneLean.BridgeLemmas
import LoopSpacesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

def ConstrainedLoopSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_loop_spaces_endgame (A : AdmissibleClass) :
    ConstrainedLoopSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse