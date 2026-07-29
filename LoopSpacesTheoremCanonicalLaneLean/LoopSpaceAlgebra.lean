import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure LoopSpacePackage (M : Type) [TopologicalSpace M] where
  loopSpace : Type
  basePoint : M
  concatenation : loopSpace → loopSpace → loopSpace
  inverse : loopSpace → loopSpace
  constantLoop : loopSpace
  associativity : Prop
  unitLeft : Prop
  unitRight : Prop
  inverseRight : Prop
  inverseLeft : Prop

structure LoopSpaceAlgebra (M : Type) [TopologicalSpace M] (L : LoopSpacePackage M) where
  groupoidStructure : Prop
  homotopyInvariance : Prop
  basePointIndependence : Prop

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse