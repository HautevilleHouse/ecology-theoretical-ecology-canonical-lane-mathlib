import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyTheoreticalEcologyCanonicalLaneLean

/-!
# Surgery Package

This module formalizes the surgical intervention concept in theoretical ecology,
where an ecosystem undergoes a controlled perturbation (surgery) to manage
invasive species or restore equilibrium. The package captures the discrete surgery
events, admissible surgical interventions, post-surgery stability control,
monotonicity persistence, and topological (ecosystem structure) changes.
-/

structure SurgeryPackage {E : EcosystemPackage} (C : InvasiveSpeciesDynamicsPackage E) where
  surgeryTimesDiscrete : Prop
  surgeryRegionAdmissible : Prop
  postSurgeryMetricControlled : Prop
  monotonicitySurvivesSurgery : Prop
  topologyChangeAccounted : Prop

structure SurgeryEvidence {E : EcosystemPackage} {C : InvasiveSpeciesDynamicsPackage E} (U : SurgeryPackage C) where
  surgeryTimesDiscreteClosed : U.surgeryTimesDiscrete
  surgeryRegionAdmissibleClosed : U.surgeryRegionAdmissible
  postSurgeryMetricControlledClosed : U.postSurgeryMetricControlled
  monotonicitySurvivesSurgeryClosed : U.monotonicitySurvivesSurgery
  topologyChangeAccountedClosed : U.topologyChangeAccounted

def SurgeryClosed {E : EcosystemPackage} {C : InvasiveSpeciesDynamicsPackage E} (U : SurgeryPackage C) : Prop :=
  U.surgeryTimesDiscrete ∧ U.surgeryRegionAdmissible ∧
  U.postSurgeryMetricControlled ∧ U.monotonicitySurvivesSurgery ∧
  U.topologyChangeAccounted

theorem surgery_closed_from_evidence {E : EcosystemPackage} {C : InvasiveSpeciesDynamicsPackage E} (U : SurgeryPackage C) (E : SurgeryEvidence U) : SurgeryClosed U := by
  exact And.intro E.surgeryTimesDiscreteClosed
    (And.intro E.surgeryRegionAdmissibleClosed
      (And.intro E.postSurgeryMetricControlledClosed
        (And.intro E.monotonicitySurvivesSurgeryClosed E.topologyChangeAccountedClosed)))

end EcologyTheoreticalEcologyCanonicalLaneLean
end HautevilleHouse