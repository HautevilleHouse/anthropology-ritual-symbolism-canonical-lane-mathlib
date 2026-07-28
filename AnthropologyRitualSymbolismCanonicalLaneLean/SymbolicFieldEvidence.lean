import AnthropologyRitualSymbolismCanonicalLaneLean.SymbolicFieldPackage

namespace HautevilleHouse
namespace AnthropologyRitualSymbolismCanonicalLaneLean

structure SymbolicFieldEvidenceTerms (F : SymbolicFieldPackage) where
  fieldDefinitionTerm : F.fieldDefinition
  ritualEmbeddingTerm : F.ritualEmbedding
  symbolicTransformationTerm : F.symbolicTransformation
  interpretationClosureTerm : F.interpretationClosure
  fieldClosed : SymbolicFieldClosed F

def SymbolicFieldEvidence.toEvidenceTerms (F : SymbolicFieldPackage)
    (E : SymbolicFieldEvidence F) : SymbolicFieldEvidenceTerms F :=
  { fieldDefinitionTerm := E.fieldDefinitionClosed
    ritualEmbeddingTerm := E.ritualEmbeddingClosed
    symbolicTransformationTerm := E.symbolicTransformationClosed
    interpretationClosureTerm := E.interpretationClosureClosed
    fieldClosed := symbolic_field_closed_from_evidence F E
  }

end AnthropologyRitualSymbolismCanonicalLaneLean
end HautevilleHouse