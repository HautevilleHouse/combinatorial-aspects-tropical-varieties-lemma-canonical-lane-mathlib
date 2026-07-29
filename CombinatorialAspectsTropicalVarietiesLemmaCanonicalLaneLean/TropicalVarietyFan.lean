import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

structure TropicalVarietyFan where
  fan : List (Submodule ℝ (Nat → ℝ) × Set (Nat → ℝ))
  rational : Prop
  pure : Prop
  equidimensional : Prop
  connectedness : Prop
  starFinite : Prop
  multiplicity : Prop
  multiplicityFunction : (Nat → ℝ) → ℕ

def tropicalVarietyFanClosed (F : TropicalVarietyFan) : Prop :=
  F.rational ∧ F.pure ∧ F.equidimensional ∧ F.starFinite

structure TropicalVarietyFanEvidence (F : TropicalVarietyFan) where
  rationalClosed : F.rational
  pureClosed : F.pure
  equidimensionalClosed : F.equidimensional
  starFiniteClosed : F.starFinite

theorem tropical_variety_fan_closed_from_evidence
    (F : TropicalVarietyFan) (E : TropicalVarietyFanEvidence F) :
    tropicalVarietyFanClosed F := by
  exact And.intro E.rationalClosed (And.intro E.pureClosed (And.intro E.equidimensionalClosed E.starFiniteClosed))

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse