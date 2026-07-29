import canonicalLaneMathlib.AdmissibleClass

/-!
# Tropical Cycle Structure Package

This package defines the combinatorial cycle structure for tropical varieties.
The admissible-class bridge records the closure of the cycle space under
intersection product and tropical fan structure.
-/

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

structure TropicalCycleStructure where
  supportPolyhedron : Type u
  weightFunction : Type v
  balancingCondition : Prop
  intersectionPairing : Prop
  fanCompatibility : Prop
  polyhedralDecomposition : Prop

structure TropicalCycleEvidence (C : TropicalCycleStructure) where
  balancingConditionClosed : C.balancingCondition
  intersectionPairingClosed : C.intersectionPairing
  fanCompatibilityClosed : C.fanCompatibility
  polyhedralDecompositionClosed : C.polyhedralDecomposition

def TropicalCycleClosed (C : TropicalCycleStructure) : Prop :=
  C.balancingCondition ∧ C.intersectionPairing ∧
  C.fanCompatibility ∧ C.polyhedralDecomposition

theorem tropical_cycle_closed_from_evidence (C : TropicalCycleStructure)
    (E : TropicalCycleEvidence C) : TropicalCycleClosed C := by
  exact And.intro E.balancingConditionClosed
    (And.intro E.intersectionPairingClosed
      (And.intro E.fanCompatibilityClosed E.polyhedralDecompositionClosed))

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
