import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

structure TropicalPolyhedralComplex where
  carrier : Set (Nat → ℝ)
  linealitySpace : Submodule ℝ (Nat → ℝ)
  cones : List (Submodule ℝ (Nat → ℝ) × Set (Nat → ℝ))
  polyhedral : Prop
  balanced : Prop
  dimension : Nat
  weighted : Prop
  weightFunction : (Nat → ℝ) → ℚ
  support : Set (Nat → ℝ)
  supportClosed : closed (SetLike.coe support)

def tropicalPolyhedralComplexClosed (T : TropicalPolyhedralComplex) : Prop :=
  T.polyhedral ∧ T.balanced ∧ T.weighted

structure TropicalPolyhedralComplexEvidence (T : TropicalPolyhedralComplex) where
  polyhedralClosed : T.polyhedral
  balancedClosed : T.balanced
  weightedClosed : T.weighted

theorem tropical_polyhedral_complex_closed_from_evidence
    (T : TropicalPolyhedralComplex) (E : TropicalPolyhedralComplexEvidence T) :
    tropicalPolyhedralComplexClosed T := by
  exact And.intro E.polyhedralClosed (And.intro E.balancedClosed E.weightedClosed)

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse