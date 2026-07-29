import canonicalLaneMathlib.AdmissibleClass
import GeometrodynamicsHolographicPrincipleCanonicalLaneLean.BridgeLemmas
import GeometrodynamicsHolographicPrincipleCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeometrodynamicsHolographicPrincipleCanonicalLaneLean

def ConstrainedGeometrodynamicsHolographicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geometrodynamics_holographic_endgame (A : AdmissibleClass) :
    ConstrainedGeometrodynamicsHolographicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometrodynamicsHolographicPrincipleCanonicalLaneLean
end HautevilleHouse