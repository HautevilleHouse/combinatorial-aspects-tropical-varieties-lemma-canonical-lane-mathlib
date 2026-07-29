import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean.TropicalVarietyStructure
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean.TropicalIntersectionTheory

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

structure TropicalCycleClassPackage {T : TropicalVarietyPackage}
    {I : TropicalIntersectionPackage T} where
  cycleRepresentative : Type
  rationalEquivalence : Prop
  chowGroup : Type
  degreeMap : Prop
  productStructure : Prop

tructure TropicalCycleClassEvidence {T : TropicalVarietyPackage}
    {I : TropicalIntersectionPackage T}
    (C : TropicalCycleClassPackage T I) where
  rationalEquivalenceClosed : C.rationalEquivalence
  productStructureClosed : C.productStructure

def TropicalCycleClassClosed {T : TropicalVarietyPackage}
    {I : TropicalIntersectionPackage T}
    (C : TropicalCycleClassPackage T I) : Prop :=
  C.rationalEquivalence ∧ C.productStructure

theorem tropical_cycle_class_closed_from_evidence
    {T : TropicalVarietyPackage} {I : TropicalIntersectionPackage T}
    (C : TropicalCycleClassPackage T I) (E : TropicalCycleClassEvidence C) :
    TropicalCycleClassClosed C := by
  exact And.intro E.rationalEquivalenceClosed E.productStructureClosed

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse