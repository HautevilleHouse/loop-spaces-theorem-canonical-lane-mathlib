import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure SuspensionPackage (X : Type) [TopologicalSpace X] where
  suspension : Type
  suspensionTopology : TopologicalSpace suspension

structure FreudenthalTheorem (X : Type) [TopologicalSpace X] (n : ℕ) where
  connectivityCondition : Prop
  suspensionHomomorphism : Prop
  isomorphismRange : Prop

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse