import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometrodynamicsHolographicPrincipleCanonicalLaneLean

structure BlackHoleInfoPackage where
  hawkingRadiation : Prop
  informationLoss : Prop
  pageCurve : Prop
  islandFormula : Prop

structure BlackHoleInfoEvidence (B : BlackHoleInfoPackage) where
  hawkingRadiationClosed : B.hawkingRadiation
  informationLossClosed : B.informationLoss
  pageCurveClosed : B.pageCurve
  islandFormulaClosed : B.islandFormula

def BlackHoleInfoClosed (B : BlackHoleInfoPackage) : Prop :=
  B.hawkingRadiation ∧ B.informationLoss ∧ B.pageCurve ∧ B.islandFormula

theorem black_hole_info_closed_from_evidence (B : BlackHoleInfoPackage) (E : BlackHoleInfoEvidence B) :
    BlackHoleInfoClosed B := by
  exact And.intro E.hawkingRadiationClosed (And.intro E.informationLossClosed (And.intro E.pageCurveClosed E.islandFormulaClosed))

end GeometrodynamicsHolographicPrincipleCanonicalLaneLean
end HautevilleHouse
