import canonicalLaneMathlib.AdmissibleClass
import LoopSpacesTheoremCanonicalLaneLean.LoopSpaceTheoremObjects

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LoopWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse