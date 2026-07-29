import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure MilnorMurreConjecturePackage where
  freeLoopSpaceHomology : Type u
  hochschildHomology : Type v
  isomorphismExists : Prop
  traceMapInclusion : Prop

structure MilnorMurreConjectureEvidence (M : MilnorMurreConjecturePackage) where
  isomorphismExistsClosed : M.isomorphismExists
  traceMapInclusionClosed : M.traceMapInclusion

def MilnorMurreConjectureClosed (M : MilnorMurreConjecturePackage) : Prop :=
  M.isomorphismExists ∧ M.traceMapInclusion

theorem milnor_murre_conjecture_closed_from_evidence
    (M : MilnorMurreConjecturePackage) (E : MilnorMurreConjectureEvidence M) :
    MilnorMurreConjectureClosed M := by
  exact And.intro E.isomorphismExistsClosed E.traceMapInclusionClosed

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse