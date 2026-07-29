import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure LoopSpaceModel (X : Type u) where
  basepoint : X
  loops : Type v
  loopComposition : loops → loops → loops
  loopInverse : loops → loops
  identityLoop : loops
  homotopyEquivToSphere : (loops → S¹) → Prop

def LoopSpaceWitnessClosed (M : LoopSpaceModel) : Prop :=
  M.homotopyEquivToSphere (λ _ => basepoint)

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse