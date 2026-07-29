import canonicalLaneMathlib.AdmissibleClass
import LoopSpacesTheoremCanonicalLaneLean.LoopSpaceBridgeLemmas
import LoopSpacesTheoremCanonicalLaneLean.LoopSpaceGateLemmas

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

def ConstrainedLoopSpaceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_loop_space_endgame (A : AdmissibleClass) : ConstrainedLoopSpaceClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse