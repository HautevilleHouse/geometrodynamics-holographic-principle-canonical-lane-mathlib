import GeometrodynamicsHolographicPrincipleCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometrodynamicsHolographicPrincipleCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HolographicSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  metric : Type

structure HolographicAdmittedObject where
  space : HolographicSpace
  asymptoticallyAdS : Prop
  boundaryConformalStructure : Prop
  bulkGeometryConsistent : Prop
  holographicDuality : Prop
  conclusion : holographicDuality

structure HolographicEndgameState where
  object : HolographicAdmittedObject

def HolographicWitnessClosed (O : HolographicAdmittedObject) : Prop :=
  O.holographicDuality

end GeometrodynamicsHolographicPrincipleCanonicalLaneLean
end HautevilleHouse