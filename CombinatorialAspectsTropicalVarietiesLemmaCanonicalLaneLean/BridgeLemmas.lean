import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TropicalVarietyClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
