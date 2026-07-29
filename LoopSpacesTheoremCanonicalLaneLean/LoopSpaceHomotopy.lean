import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure HomotopyGroupPackage (M : Type) [TopologicalSpace M] where
  n : ℕ
  groupStructure : Prop
  abelianForNge2 : n ≥ 2 → Prop

structure HomotopyGroupRelationship where
  fibrationLongExact : Prop
  wedgeSum : Prop
  productFormulas : Prop

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse