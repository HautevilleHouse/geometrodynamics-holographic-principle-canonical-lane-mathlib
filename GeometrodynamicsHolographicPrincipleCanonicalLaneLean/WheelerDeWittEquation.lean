import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometrodynamicsHolographicPrincipleCanonicalLaneLean

structure WheelerDeWittPackage where
  waveFunction : Prop
  hamiltonianConstraint : Prop
  diffeomorphismConstraint : Prop
  superspaceMetric : Prop

structure WheelerDeWittEvidence (W : WheelerDeWittPackage) where
  waveFunctionClosed : W.waveFunction
  hamiltonianConstraintClosed : W.hamiltonianConstraint
  diffeomorphismConstraintClosed : W.diffeomorphismConstraint
  superspaceMetricClosed : W.superspaceMetric

def WheelerDeWittClosed (W : WheelerDeWittPackage) : Prop :=
  W.waveFunction ∧ W.hamiltonianConstraint ∧ W.diffeomorphismConstraint ∧ W.superspaceMetric

theorem wheeler_dewitt_closed_from_evidence (W : WheelerDeWittPackage) (E : WheelerDeWittEvidence W) :
    WheelerDeWittClosed W := by
  exact And.intro E.waveFunctionClosed (And.intro E.hamiltonianConstraintClosed (And.intro E.diffeomorphismConstraintClosed E.superspaceMetricClosed))

end GeometrodynamicsHolographicPrincipleCanonicalLaneLean
end HautevilleHouse
