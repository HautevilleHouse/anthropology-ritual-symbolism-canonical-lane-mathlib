import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AnthropologyRitualSymbolismCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RitualSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RitualAdmittedObject where
  space : RitualSpace
  symbolSet : Type
  ritualPerformance : Type
  symbolicInterpretation : Prop
  conclusion : symbolicInterpretation

structure RitualEndgameState where
  object : RitualAdmittedObject

def RitualWitnessClosed (O : RitualAdmittedObject) : Prop :=
  O.symbolicInterpretation

end AnthropologyRitualSymbolismCanonicalLaneLean
end HautevilleHouse