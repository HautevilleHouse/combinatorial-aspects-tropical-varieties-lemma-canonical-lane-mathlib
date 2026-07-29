import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

structure TropicalFan where
  ambientSpace : Type u
  rays : Type v
  cones : Type w
  dimension : Nat
  simplicial : Prop
  pure : Prop
  balanced : Prop
  tropicalVariety : TropicalVariety
  fanAssociated : Prop
  fanAssociatedTerm : fanAssociated

structure TropicalFanEvidence (F : TropicalFan) where
  simplicialClosed : F.simplicial
  pureClosed : F.pure
  balancedClosed : F.balanced
  fanAssociatedClosed : F.fanAssociated

def TropicalFanClosed (F : TropicalFan) : Prop :=
  F.simplicial ∧ F.pure ∧ F.balanced ∧ F.fanAssociated

theorem tropical_fan_closed_from_evidence (F : TropicalFan) (E : TropicalFanEvidence F) :
    TropicalFanClosed F := by
  exact And.intro E.simplicialClosed
    (And.intro E.pureClosed
      (And.intro E.balancedClosed E.fanAssociatedClosed))

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
