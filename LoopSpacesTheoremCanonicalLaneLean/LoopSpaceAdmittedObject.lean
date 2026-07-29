import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopSpacesTheoremCanonicalLaneLean.LoopSpaceModel

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure LoopSpaceAdmittedObject where
  space : LoopSpaceModel Unit
  simplyConnected : Prop
  conclusion : simplyConnected

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse