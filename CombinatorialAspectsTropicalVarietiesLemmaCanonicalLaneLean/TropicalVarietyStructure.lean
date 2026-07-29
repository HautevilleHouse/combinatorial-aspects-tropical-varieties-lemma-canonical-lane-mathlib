import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

structure TropicalVarietyPackage where
  groundField : Type
  lattice : Type
  fan : Type
  support : Type
  dimension : Nat
  pureDimension : Prop
  balancedFan : Prop
  polyhedralStructure : Prop

tructure TropicalVarietyEvidence (T : TropicalVarietyPackage) where
  pureDimensionClosed : T.pureDimension
  balancedFanClosed : T.balancedFan
  polyhedralStructureClosed : T.polyhedralStructure

def TropicalVarietyClosed (T : TropicalVarietyPackage) : Prop :=
  T.pureDimension ∧ T.balancedFan ∧ T.polyhedralStructure

theorem tropical_variety_closed_from_evidence
    (T : TropicalVarietyPackage) (E : TropicalVarietyEvidence T) :
    TropicalVarietyClosed T := by
  exact And.intro E.pureDimensionClosed (And.intro E.balancedFanClosed E.polyhedralStructureClosed)

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse