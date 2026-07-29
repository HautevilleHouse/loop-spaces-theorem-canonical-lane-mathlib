import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpacesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LoopSpaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LoopSpaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LoopSpacesTheoremCanonicalLaneLean
end HautevilleHouse