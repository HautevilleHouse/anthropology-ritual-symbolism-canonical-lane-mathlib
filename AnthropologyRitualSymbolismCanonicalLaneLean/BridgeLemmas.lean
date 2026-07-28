import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyRitualSymbolismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RitualWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AnthropologyRitualSymbolismCanonicalLaneLean
end HautevilleHouse
