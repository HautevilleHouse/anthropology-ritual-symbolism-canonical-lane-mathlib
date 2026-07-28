import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyRitualSymbolismCanonicalLaneLean

structure RitualSymbolismAdmittedObject where
  ritual : Ritual
  participants : List Participant
  symbols : List Symbol
  actions : List Action
  meaningInterpretation : Prop
  conclusion : meaningInterpretation

structure Ritual where
  name : String
  description : String

structure Participant where
  role : String
  identity : String

structure Symbol where
  representation : String
  associatedMeaning : String

structure Action where
  type : String
  symbolicContent : String

def RitualSymbolismWitnessClosed (O : RitualSymbolismAdmittedObject) : Prop :=
  O.meaningInterpretation

end AnthropologyRitualSymbolismCanonicalLaneLean
end HautevilleHouse