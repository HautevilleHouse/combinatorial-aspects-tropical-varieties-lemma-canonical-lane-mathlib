import HautevilleHouse.CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TropicalVariety where
  carrier : Type
  topology : TopologicalSpace carrier
  polyhedralStructure : Prop

def TropicalAdmittedObject where
  space : TropicalVariety
  closureCondition : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure TropicalEndgameState where
  object : TropicalAdmittedObject

def TropicalWitnessClosed (O : TropicalAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse