import GeometrodynamicsHolographicPrincipleCanonicalLaneLean.GeometrodynamicsFoundation

namespace HautevilleHouse
namespace GeometrodynamicsHolographicPrincipleCanonicalLaneLean

structure BHZEntropyPackage {G : GeometrodynamicsPackage} where
  bekensteinHawkingFormula : Prop
  holographicScreenArea : Prop
  entropyBoundryTerm : Prop
  maximalEntropyPrinciple : Prop

structure BHZEntropyEvidence {G : GeometrodynamicsPackage} (E : BHZEntropyPackage G) where
  bekensteinHawkingFormulaClosed : E.bekensteinHawkingFormula
  holographicScreenAreaClosed : E.holographicScreenArea
  entropyBoundryTermClosed : E.entropyBoundryTerm
  maximalEntropyPrincipleClosed : E.maximalEntropyPrinciple

def BHZEntropyClosed {G : GeometrodynamicsPackage} (E : BHZEntropyPackage G) : Prop :=
  E.bekensteinHawkingFormula ∧ E.holographicScreenArea ∧ E.entropyBoundryTerm ∧ E.maximalEntropyPrinciple

theorem bhz_entropy_closed_from_evidence {G : GeometrodynamicsPackage} (E : BHZEntropyPackage G) (Ev : BHZEntropyEvidence E) : BHZEntropyClosed E := by
  exact And.intro Ev.bekensteinHawkingFormulaClosed (And.intro Ev.holographicScreenAreaClosed (And.intro Ev.entropyBoundryTermClosed Ev.maximalEntropyPrincipleClosed))

end GeometrodynamicsHolographicPrincipleCanonicalLaneLean
end HautevilleHouse