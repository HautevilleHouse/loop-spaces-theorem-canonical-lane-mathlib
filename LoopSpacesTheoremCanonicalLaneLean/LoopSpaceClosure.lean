import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopSpacesTheoremCanonicalLaneLean.LoopSpaceAlgebra
import HautevilleHouse.LoopSpacesTheoremCanonicalLaneLean.LoopSpaceHomotopy
import HautevilleHouse.LoopSpacesTheoremCanonicalLaneLean.WhiteheadProduct
import HautevilleHouse.LoopSpacesTheoremCanonicalLaneLean.FreudenthalSuspension

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

def ConstrainedLoopSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_loop_spaces_endgame (A : AdmissibleClass) :
    ConstrainedLoopSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse