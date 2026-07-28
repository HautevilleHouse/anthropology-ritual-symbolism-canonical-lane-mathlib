import canonicalLaneMathlib.AdmissibleClass
import AnthropologyRitualSymbolismCanonicalLaneLean.BridgeLemmas
import AnthropologyRitualSymbolismCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AnthropologyRitualSymbolismCanonicalLaneLean

def ConstrainedRitualClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ritual_endgame (A : AdmissibleClass) :
    ConstrainedRitualClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyRitualSymbolismCanonicalLaneLean
end HautevilleHouse
