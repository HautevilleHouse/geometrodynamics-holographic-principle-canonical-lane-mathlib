import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometrodynamicsHolographicPrincipleCanonicalLaneLean

structure EntanglementEntropyPackage {H : HolographicScreenPackage}
    {B : BulkReconstructionPackage H} where
  ryuTakayanagiFormula : Prop
  holographicEntanglementEntropy : Prop
  boundaryRegionDefined : Prop
  minimalSurfaceExists : Prop
  areaLaw : Prop

structure EntanglementEntropyEvidence {H : HolographicScreenPackage}
    {B : BulkReconstructionPackage H} (E : EntanglementEntropyPackage B) where
  ryuTakayanagiFormulaClosed : E.ryuTakayanagiFormula
  holographicEntanglementEntropyClosed : E.holographicEntanglementEntropy
  boundaryRegionDefinedClosed : E.boundaryRegionDefined
  minimalSurfaceExistsClosed : E.minimalSurfaceExists
  areaLawClosed : E.areaLaw

def EntanglementEntropyClosed {H : HolographicScreenPackage}
    {B : BulkReconstructionPackage H} (E : EntanglementEntropyPackage B) : Prop :=
  E.ryuTakayanagiFormula ∧ E.holographicEntanglementEntropy ∧
  E.boundaryRegionDefined ∧ E.minimalSurfaceExists ∧ E.areaLaw

theorem entanglement_entropy_closed_from_evidence {H : HolographicScreenPackage}
    {B : BulkReconstructionPackage H} (Epkg : EntanglementEntropyPackage B)
    (E : EntanglementEntropyEvidence Epkg) : EntanglementEntropyClosed Epkg := by
  exact And.intro E.ryuTakayanagiFormulaClosed
    (And.intro E.holographicEntanglementEntropyClosed
      (And.intro E.boundaryRegionDefinedClosed
        (And.intro E.minimalSurfaceExistsClosed E.areaLawClosed)))

end GeometrodynamicsHolographicPrincipleCanonicalLaneLean
end HautevilleHouse