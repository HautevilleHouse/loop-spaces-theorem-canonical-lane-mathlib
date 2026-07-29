import LoopSpacesTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LoopSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LoopSpaceAdmittedObject where
  space : LoopSpace
  pathConnectedSpace : Prop
  simplyConnected : Prop
  loopSpaceModel : Type
  loopSpaceTopology : TopologicalSpace loopSpaceModel
  weakHomotopyEquivalentToSphere : Prop
  conclusion : weakHomotopyEquivalentToSphere

structure LoopSpaceEndgameState where
  object : LoopSpaceAdmittedObject

def LoopSpaceWitnessClosed (O : LoopSpaceAdmittedObject) : Prop :=
  O.weakHomotopyEquivalentToSphere

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse