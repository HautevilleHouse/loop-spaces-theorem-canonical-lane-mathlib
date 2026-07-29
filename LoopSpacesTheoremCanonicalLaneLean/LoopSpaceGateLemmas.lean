import canonicalLaneMathlib.AdmissibleClass
import LoopSpacesTheoremCanonicalLaneLean.LoopSpaceBridgeLemmas

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse