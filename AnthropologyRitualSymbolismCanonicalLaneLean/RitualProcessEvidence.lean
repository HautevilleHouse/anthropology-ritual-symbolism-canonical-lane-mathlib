import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyRitualSymbolismCanonicalLaneLean.SymbolicMeaningPackage

namespace HautevilleHouse
namespace AnthropologyRitualSymbolismCanonicalLaneLean

structure RitualProcessPackage {O : RitualSymbolismAdmittedObject} {S : SymbolicMeaningPackage O} where
  participantAgency : Prop
  symbolicEfficacy : Prop
  ritualTimeSequencing : Prop
  spatialArrangement : Prop

structure RitualProcessEvidence {O : RitualSymbolismAdmittedObject} {S : SymbolicMeaningPackage O}
    (P : RitualProcessPackage S) where
  participantAgencyClosed : P.participantAgency
  symbolicEfficacyClosed : P.symbolicEfficacy
  ritualTimeSequencingClosed : P.ritualTimeSequencing
  spatialArrangementClosed : P.spatialArrangement

def RitualProcessClosed {O : RitualSymbolismAdmittedObject} {S : SymbolicMeaningPackage O}
    (P : RitualProcessPackage S) : Prop :=
  P.participantAgency ∧ P.symbolicEfficacy ∧ P.ritualTimeSequencing ∧ P.spatialArrangement

theorem ritual_process_closed_from_evidence {O : RitualSymbolismAdmittedObject} {S : SymbolicMeaningPackage O}
    (P : RitualProcessPackage S) (E : RitualProcessEvidence P) : RitualProcessClosed P :=
  And.intro E.participantAgencyClosed (And.intro E.symbolicEfficacyClosed
    (And.intro E.ritualTimeSequencingClosed E.spatialArrangementClosed))

end AnthropologyRitualSymbolismCanonicalLaneLean
end HautevilleHouse