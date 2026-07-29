import GeometrodynamicsHolographicPrincipleCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometrodynamicsHolographicPrincipleCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def holographicProjection : Projection HolographicEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem holographic_projection_idempotent (x : HolographicEndgameState) :
    holographicProjection.toFun (holographicProjection.toFun x) = holographicProjection.toFun x := by
  exact holographicProjection.idempotent x

end GeometrodynamicsHolographicPrincipleCanonicalLaneLean
end HautevilleHouse