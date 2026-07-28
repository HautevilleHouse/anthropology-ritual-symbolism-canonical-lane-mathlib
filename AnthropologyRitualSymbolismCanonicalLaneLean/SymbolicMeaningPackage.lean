import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyRitualSymbolismCanonicalLaneLean.RitualSymbolismElements

namespace HautevilleHouse
namespace AnthropologyRitualSymbolismCanonicalLaneLean

structure SymbolicMeaningPackage {O : RitualSymbolismAdmittedObject} where
  interpretationContext : Prop
  culturalEmbedding : Prop
  structuralCoherence : Prop
  bridgingEvidence : Prop

structure SymbolicMeaningEvidence {O : RitualSymbolismAdmittedObject} (S : SymbolicMeaningPackage O) where
  interpretationContextClosed : S.interpretationContext
  culturalEmbeddingClosed : S.culturalEmbedding
  structuralCoherenceClosed : S.structuralCoherence
  bridgingEvidenceClosed : S.bridgingEvidence

def SymbolicMeaningClosed {O : RitualSymbolismAdmittedObject} (S : SymbolicMeaningPackage O) : Prop :=
  S.interpretationContext ∧ S.culturalEmbedding ∧ S.structuralCoherence ∧ S.bridgingEvidence

theorem symbolic_meaning_closed_from_evidence {O : RitualSymbolismAdmittedObject}
    (S : SymbolicMeaningPackage O) (E : SymbolicMeaningEvidence S) : SymbolicMeaningClosed S :=
  And.intro E.interpretationContextClosed (And.intro E.culturalEmbeddingClosed
    (And.intro E.structuralCoherenceClosed E.bridgingEvidenceClosed))

end AnthropologyRitualSymbolismCanonicalLaneLean
end HautevilleHouse