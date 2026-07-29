import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure EcosystemStabilityPackage where
  resilience : Prop
  resistance : Prop
  regimeShifts : Prop
  recoveryRates : Prop

structure EcosystemStabilityEvidence (E : EcosystemStabilityPackage) where
  resilienceClosed : E.resilience
  resistanceClosed : E.resistance
  regimeShiftsClosed : E.regimeShifts
  recoveryRatesClosed : E.recoveryRates

def EcosystemStabilityClosed (E : EcosystemStabilityPackage) : Prop :=
  E.resilience ∧ E.resistance ∧ E.regimeShifts ∧ E.recoveryRates

theorem ecosystem_stability_closed_from_evidence (E : EcosystemStabilityPackage) (Ev : EcosystemStabilityEvidence E) : EcosystemStabilityClosed E := by
  exact And.intro Ev.resilienceClosed (And.intro Ev.resistanceClosed (And.intro Ev.regimeShiftsClosed Ev.recoveryRatesClosed))

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse