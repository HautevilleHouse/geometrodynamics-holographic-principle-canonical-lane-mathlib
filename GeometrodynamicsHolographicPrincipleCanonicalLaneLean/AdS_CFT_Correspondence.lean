import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometrodynamicsHolographicPrincipleCanonicalLaneLean

structure AdSCFTCorrespondencePackage where
  adsBulk : Type
  cftBoundary : Type
  dualityMap : adsBulk → cftBoundary
  partitionFunctionEquality : Prop
  correspondenceClosed : Prop
  witness : correspondenceClosed

structure AdSCFTCorrespondenceEvidence (A : AdSCFTCorrespondencePackage) where
  partitionFunctionEqualityClosed : A.partitionFunctionEquality
  correspondenceClosedClosed : A.correspondenceClosed

def AdSCFTCorrespondenceClosed (A : AdSCFTCorrespondencePackage) : Prop :=
  A.correspondenceClosed

theorem adscft_correspondence_closed_from_evidence
    (A : AdSCFTCorrespondencePackage)
    (E : AdSCFTCorrespondenceEvidence A) :
    AdSCFTCorrespondenceClosed A := by
  exact E.correspondenceClosedClosed

end GeometrodynamicsHolographicPrincipleCanonicalLaneLean
end HautevilleHouse