import GeometrodynamicsHolographicPrincipleCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GeometrodynamicsHolographicPrincipleCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HolographicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometrodynamicsHolographicPrincipleCanonicalLaneLean
end HautevilleHouse