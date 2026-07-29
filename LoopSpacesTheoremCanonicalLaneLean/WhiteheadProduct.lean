import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure WhiteheadProductFormula where
  sphereMap : (S^2 → S^2)
  product : Prop
  relationToCommutator : Prop

structure WhiteheadBridge (A : AdmissibleClass) : Prop where
  formulaClosed : WhiteheadProductFormula
  bridgeClosed : bridgeClosed A
  gateClosed : gateClosed A

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse