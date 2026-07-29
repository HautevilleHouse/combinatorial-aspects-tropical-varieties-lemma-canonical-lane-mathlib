import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

structure TropicalVariety where
  underlyingSet : Type u
  tropicalStructure : Type v
  dimension : Nat
  balancedCondition : Prop
  irreducible : Prop
  pureDimension : Prop
  tropicalStructureGivesScheme : Prop
  balancedConditionTerm : balancedCondition
  irreducibleTerm : irreducible
  pureDimensionTerm : pureDimension
  tropicalStructureGivesSchemeTerm : tropicalStructureGivesScheme

structure TropicalVarietyEvidence (V : TropicalVariety) where
  balancedConditionClosed : V.balancedCondition
  irreducibleClosed : V.irreducible
  pureDimensionClosed : V.pureDimension
  tropicalStructureGivesSchemeClosed : V.tropicalStructureGivesScheme

def TropicalVarietyClosed (V : TropicalVariety) : Prop :=
  V.balancedCondition ∧ V.irreducible ∧ V.pureDimension ∧ V.tropicalStructureGivesScheme

theorem tropical_variety_closed_from_evidence (V : TropicalVariety) (E : TropicalVarietyEvidence V) :
    TropicalVarietyClosed V := by
  exact And.intro E.balancedConditionClosed
    (And.intro E.irreducibleClosed
      (And.intro E.pureDimensionClosed E.tropicalStructureGivesSchemeClosed))

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
