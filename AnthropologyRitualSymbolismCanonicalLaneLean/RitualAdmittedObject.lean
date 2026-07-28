import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyRitualSymbolismCanonicalLaneLean

structure RitualSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RitualAdmittedObject where
  space : RitualSpace
  ritualStructure : Prop
  symbolicCoherence : Prop
  conclusion : symbolicCoherence

structure RitualEndgameState where
  object : RitualAdmittedObject

def RitualWitnessClosed (O : RitualAdmittedObject) : Prop :=
  O.symbolicCoherence

end AnthropologyRitualSymbolismCanonicalLaneLean
end HautevilleHouse