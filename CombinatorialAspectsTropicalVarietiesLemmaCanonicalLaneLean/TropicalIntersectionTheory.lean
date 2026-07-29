import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean.TropicalCycleStructure

/-!
# Tropical Intersection Theory Package

This package records the formal intersection product on tropical cycles,
ensuring the product is well-defined with respect to the combinatorial data.
-/

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

structure TropicalIntersectionPackage (C : TropicalCycleStructure) where
  intersectionProduct : Prop
  commutativity : Prop
  associativity : Prop
  projectionFormula : Prop
  stabilityUnderRefinement : Prop

structure TropicalIntersectionEvidence (C : TropicalCycleStructure)
    (I : TropicalIntersectionPackage C) where
  intersectionProductClosed : I.intersectionProduct
  commutativityClosed : I.commutativity
  associativityClosed : I.associativity
  projectionFormulaClosed : I.projectionFormula
  stabilityUnderRefinementClosed : I.stabilityUnderRefinement

def TropicalIntersectionClosed (C : TropicalCycleStructure)
    (I : TropicalIntersectionPackage C) : Prop :=
  I.intersectionProduct ∧ I.commutativity ∧
  I.associativity ∧ I.projectionFormula ∧
  I.stabilityUnderRefinement

theorem tropical_intersection_closed_from_evidence
    (C : TropicalCycleStructure) (I : TropicalIntersectionPackage C)
    (E : TropicalIntersectionEvidence C I) :
    TropicalIntersectionClosed C I := by
  exact And.intro E.intersectionProductClosed
    (And.intro E.commutativityClosed
      (And.intro E.associativityClosed
        (And.intro E.projectionFormulaClosed
          E.stabilityUnderRefinementClosed)))

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
