import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean.TropicalVarietyStructure

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

structure TropicalModuliPackage {T : TropicalVarietyPackage} where
  moduliSpace : Type
  tropicalCurve : Type
  genus : Nat
  markedPoints : Nat
  compactification : Prop
  intersectionTheory : Prop

tructure TropicalModuliEvidence {T : TropicalVarietyPackage}
    (M : TropicalModuliPackage T) where
  compactificationClosed : M.compactification
  intersectionTheoryClosed : M.intersectionTheory

def TropicalModuliClosed {T : TropicalVarietyPackage}
    (M : TropicalModuliPackage T) : Prop :=
  M.compactification ∧ M.intersectionTheory

theorem tropical_moduli_closed_from_evidence
    {T : TropicalVarietyPackage} (M : TropicalModuliPackage T)
    (E : TropicalModuliEvidence M) : TropicalModuliClosed M := by
  exact And.intro E.compactificationClosed E.intersectionTheoryClosed

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse