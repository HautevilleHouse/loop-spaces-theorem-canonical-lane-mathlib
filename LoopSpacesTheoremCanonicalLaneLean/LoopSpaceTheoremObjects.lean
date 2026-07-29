import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure TopologicalSpaceObject (X : Type) where
  topology : TopologicalSpace X

delaration expansion

structure LoopSpaceObject (X : Type) [TopologicalSpace X] where
  basepoint : X
  loopSpace : Type
  loopTopology : TopologicalSpace loopSpace
  compositionOperation : loopSpace → loopSpace → loopSpace
  identityLoop : loopSpace
  inverseOperation : loopSpace → loopSpace
  groupLaws : Unit
  homotopyEquivalence : Prop
  conclusion : homotopyEquivalence

def LoopWitnessClosed (O : LoopSpaceObject X) : Prop :=
  O.homotopyEquivalence

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse