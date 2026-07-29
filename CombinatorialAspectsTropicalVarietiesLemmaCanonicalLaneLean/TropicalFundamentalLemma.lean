import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean.TropicalCycle
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean.TropicalIntersectionTheory

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

structure TropicalFundamentalLemmaPackage where
  cycle : TropicalCycle
  intersectionPair : TropicalIntersectionPair
  identityHolds : Prop
  identityHoldsTerm : identityHolds

structure TropicalFundamentalLemmaEvidence (F : TropicalFundamentalLemmaPackage) where
  identityHoldsClosed : F.identityHolds
  cycleClosed : TropicalCycleClosed F.cycle
  intersectionPairClosed : TropicalIntersectionClosed F.intersectionPair

def TropicalFundamentalLemmaClosed (F : TropicalFundamentalLemmaPackage) : Prop :=
  F.identityHolds ∧ TropicalCycleClosed F.cycle ∧ TropicalIntersectionClosed F.intersectionPair

theorem tropical_fundamental_lemma_closed_from_evidence (F : TropicalFundamentalLemmaPackage) (E : TropicalFundamentalLemmaEvidence F) :
    TropicalFundamentalLemmaClosed F := by
  exact And.intro E.identityHoldsClosed
    (And.intro E.cycleClosed E.intersectionPairClosed)

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
