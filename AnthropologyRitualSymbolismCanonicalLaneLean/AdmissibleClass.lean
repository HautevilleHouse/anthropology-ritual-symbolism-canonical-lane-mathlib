import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyRitualSymbolismCanonicalLaneLean

structure AdmissibleClass where
  object : RitualAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RitualWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyRitualSymbolismCanonicalLaneLean
end HautevilleHouse
