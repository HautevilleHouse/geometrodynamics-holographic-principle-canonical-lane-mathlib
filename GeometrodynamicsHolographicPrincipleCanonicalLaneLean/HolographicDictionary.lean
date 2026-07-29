import GeometrodynamicsHolographicPrincipleCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometrodynamicsHolographicPrincipleCanonicalLaneLean

structure BoundaryBulkMap where
  boundaryOperator : Type
  bulkOperator : Type
  dictionaryMap : boundaryOperator → bulkOperator
  holographicCorrespondenceProp : Prop

structure HolographicDictionaryPackage where
  boundaryTheory : Type
  bulkTheory : Type
  dictionary : BoundaryBulkMap
  conformalFieldTheoryIdentified : Prop
  asymptoticallyAdSBackdrop : Prop
  dictionaryMapClosed : Prop

structure HolographicDictionaryEvidence (H : HolographicDictionaryPackage) where
  conformalFieldTheoryIdentifiedClosed : H.conformalFieldTheoryIdentified
  asymptoticallyAdSBackdropClosed : H.asymptoticallyAdSBackdrop
  dictionaryMapClosedClosed : H.dictionaryMapClosed

def HolographicDictionaryClosed (H : HolographicDictionaryPackage) : Prop :=
  H.conformalFieldTheoryIdentified ∧ H.asymptoticallyAdSBackdrop ∧ H.dictionaryMapClosed

theorem holographic_dictionary_closed_from_evidence
    (H : HolographicDictionaryPackage) (E : HolographicDictionaryEvidence H) :
    HolographicDictionaryClosed H := by
  exact And.intro E.conformalFieldTheoryIdentifiedClosed
    (And.intro E.asymptoticallyAdSBackdropClosed E.dictionaryMapClosedClosed)

end GeometrodynamicsHolographicPrincipleCanonicalLaneLean
end HautevilleHouse