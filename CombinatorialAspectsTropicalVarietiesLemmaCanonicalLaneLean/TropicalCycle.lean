import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

structure TropicalCycle where
  fan : TropicalFan
  weightFunction : TropicalFan.rays → ℚ
  balancingCondition : Prop
  effective : Prop
  dimension : Nat
  weightFunctionTerm : ∀ r, weightFunction r ∈ ℚ
  balancingConditionTerm : balancingCondition
  effectiveTerm : effective

structure TropicalCycleEvidence (C : TropicalCycle) where
  balancingConditionClosed : C.balancingCondition
  effectiveClosed : C.effective

def TropicalCycleClosed (C : TropicalCycle) : Prop :=
  C.balancingCondition ∧ C.effective

theorem tropical_cycle_closed_from_evidence (C : TropicalCycle) (E : TropicalCycleEvidence C) :
    TropicalCycleClosed C := by
  exact And.intro E.balancingConditionClosed E.effectiveClosed

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
