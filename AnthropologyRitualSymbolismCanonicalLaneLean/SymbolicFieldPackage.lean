import AnthropologyRitualSymbolismCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AnthropologyRitualSymbolismCanonicalLaneLean

structure SymbolicFieldPackage where
  fieldDefinition : Prop
  ritualEmbedding : Prop
  symbolicTransformation : Prop
  interpretationClosure : Prop

structure SymbolicFieldEvidence (F : SymbolicFieldPackage) where
  fieldDefinitionClosed : F.fieldDefinition
  ritualEmbeddingClosed : F.ritualEmbedding
  symbolicTransformationClosed : F.symbolicTransformation
  interpretationClosureClosed : F.interpretationClosure

def SymbolicFieldClosed (F : SymbolicFieldPackage) : Prop :=
  F.fieldDefinition ∧ F.ritualEmbedding ∧ F.symbolicTransformation ∧ F.interpretationClosure

theorem symbolic_field_closed_from_evidence (F : SymbolicFieldPackage)
    (E : SymbolicFieldEvidence F) : SymbolicFieldClosed F := by
  exact And.intro E.fieldDefinitionClosed
    (And.intro E.ritualEmbeddingClosed
      (And.intro E.symbolicTransformationClosed E.interpretationClosureClosed))

end AnthropologyRitualSymbolismCanonicalLaneLean
end HautevilleHouse