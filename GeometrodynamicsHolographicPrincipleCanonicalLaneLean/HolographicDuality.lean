import GeometrodynamicsHolographicPrincipleCanonicalLaneLean.BHZEntropy

namespace HautevilleHouse
namespace GeometrodynamicsHolographicPrincipleCanonicalLaneLean

structure HolographicDualityPackage {G : GeometrodynamicsPackage} {E : BHZEntropyPackage G} where
  dualityMap : Type u
  boundaryCFT : Type v
  bulkGravityDual : Prop
  correlatorMatching : Prop
  renormalizationFlow : Prop

structure HolographicDualityEvidence {G : GeometrodynamicsPackage} {E : BHZEntropyPackage G} (D : HolographicDualityPackage G E) where
  bulkGravityDualClosed : D.bulkGravityDual
  correlatorMatchingClosed : D.correlatorMatching
  renormalizationFlowClosed : D.renormalizationFlow

def HolographicDualityClosed {G : GeometrodynamicsPackage} {E : BHZEntropyPackage G} (D : HolographicDualityPackage G E) : Prop :=
  D.bulkGravityDual ∧ D.correlatorMatching ∧ D.renormalizationFlow

theorem holographic_duality_closed_from_evidence {G : GeometrodynamicsPackage} {E : BHZEntropyPackage G} (D : HolographicDualityPackage G E) (Ev : HolographicDualityEvidence D) : HolographicDualityClosed D := by
  exact And.intro Ev.bulkGravityDualClosed (And.intro Ev.correlatorMatchingClosed Ev.renormalizationFlowClosed)

end GeometrodynamicsHolographicPrincipleCanonicalLaneLean
end HautevilleHouse