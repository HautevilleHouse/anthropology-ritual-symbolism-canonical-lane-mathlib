import canonicalLaneMathlib.AdmissibleClass
import AnthropologyRitualSymbolismCanonicalLaneLean.RitualFieldPackage

namespace HautevilleHouse
namespace AnthropologyRitualSymbolismCanonicalLaneLean

structure SymbolicTransformationPackage (R : RitualFieldPackage) where
  initialSymbolicState : Type u
  transformationProcess : Type v
  transformationRules : Prop
  symbolicEvolution : Prop
  invariantSymbols : Prop

structure SymbolicTransformationEvidence {R : RitualFieldPackage} (S : SymbolicTransformationPackage R) where
  transformationRulesClosed : S.transformationRules
  symbolicEvolutionClosed : S.symbolicEvolution
  invariantSymbolsClosed : S.invariantSymbols

def SymbolicTransformationClosed {R : RitualFieldPackage} (S : SymbolicTransformationPackage R) : Prop :=
  S.transformationRules ∧ S.symbolicEvolution ∧ S.invariantSymbols

theorem symbolic_transformation_closed_from_evidence
    {R : RitualFieldPackage} (S : SymbolicTransformationPackage R)
    (E : SymbolicTransformationEvidence S) : SymbolicTransformationClosed S := by
  exact And.intro E.transformationRulesClosed
    (And.intro E.symbolicEvolutionClosed E.invariantSymbolsClosed)

end AnthropologyRitualSymbolismCanonicalLaneLean
end HautevilleHouse
