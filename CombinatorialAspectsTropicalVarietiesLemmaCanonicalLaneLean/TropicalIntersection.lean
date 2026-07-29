import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

structure TropicalIntersection where
  varieties : List TropicalVarietyFan
  intersectionFan : TropicalVarietyFan
  intersectionMultiplicity : List (Nat → ℝ) → ℕ
  proper : Prop
  transverse : Prop
  dimensionExpected : Prop
  weightedSumFormula : Prop

def tropicalIntersectionClosed (I : TropicalIntersection) : Prop :=
  I.proper ∧ I.transverse ∧ I.dimensionExpected ∧ I.weightedSumFormula

structure TropicalIntersectionEvidence (I : TropicalIntersection) where
  properClosed : I.proper
  transverseClosed : I.transverse
  dimensionExpectedClosed : I.dimensionExpected
  weightedSumFormulaClosed : I.weightedSumFormula

theorem tropical_intersection_closed_from_evidence
    (I : TropicalIntersection) (E : TropicalIntersectionEvidence I) :
    tropicalIntersectionClosed I := by
  exact And.intro E.properClosed (And.intro E.transverseClosed (And.intro E.dimensionExpectedClosed E.weightedSumFormulaClosed))

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse