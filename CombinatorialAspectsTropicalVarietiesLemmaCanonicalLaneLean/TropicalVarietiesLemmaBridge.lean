import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

/-!
# Tropical Varieties Lemma Bridge

This module defines the canonical bridge structures linking
tropical combinatorial data to admissible classes.
-/

structure TropicalAdmissibleObject where
  fan : TropicalFan
  intersectionPair : TropicalIntersectionPair
  bergeData : BergeData

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | TropicalAdmittedObject O => 
    FanDualityClosed O.fan ∧ IntersectionMultiplicityClosed O.intersectionPair ∧ O.bergeData.property
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  cases' A.object with O
  · -- Case: A.object = TropicalAdmittedObject O
    have h1 : FanDualityClosed O.fan := A.fanDualityClosed
    have h2 : IntersectionMultiplicityClosed O.intersectionPair := A.intersectionMultiplicityClosed
    have h3 : O.bergeData.property := A.bergeDataProperty
    exact ⟨h1, h2, h3⟩
  · -- Other cases, which should have a contradiction because A is admissible
    have h : A.admissibleCondition := A.admissibleCondition
    exfalso; exact A.admissibleCondition (by
      intro h' ; exact h')

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse