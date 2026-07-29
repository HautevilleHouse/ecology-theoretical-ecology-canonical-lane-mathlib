import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

structure BiogeochemicalCyclesPackage where
  carbonCycle : Prop
  nitrogenCycle : Prop
  phosphorusCycle : Prop
  nutrientLimitation : Prop
  feedbackMechanisms : Prop

structure BiogeochemicalCyclesEvidence (B : BiogeochemicalCyclesPackage) where
  carbonCycleClosed : B.carbonCycle
  nitrogenCycleClosed : B.nitrogenCycle
  phosphorusCycleClosed : B.phosphorusCycle
  nutrientLimitationClosed : B.nutrientLimitation
  feedbackMechanismsClosed : B.feedbackMechanisms

def BiogeochemicalCyclesClosed (B : BiogeochemicalCyclesPackage) : Prop :=
  B.carbonCycle ∧ B.nitrogenCycle ∧ B.phosphorusCycle ∧ B.nutrientLimitation ∧ B.feedbackMechanisms

theorem biogeochemical_cycles_closed_from_evidence (B : BiogeochemicalCyclesPackage)
    (E : BiogeochemicalCyclesEvidence B) : BiogeochemicalCyclesClosed B := by
  exact And.intro E.carbonCycleClosed
    (And.intro E.nitrogenCycleClosed
      (And.intro E.phosphorusCycleClosed
        (And.intro E.nutrientLimitationClosed E.feedbackMechanismsClosed)))

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse