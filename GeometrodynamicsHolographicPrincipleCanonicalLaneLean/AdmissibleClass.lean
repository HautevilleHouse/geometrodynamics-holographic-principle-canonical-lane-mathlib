import canonicalLaneMathlib.AdmissibleClass
import GeometrodynamicsHolographicPrincipleCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GeometrodynamicsHolographicPrincipleCanonicalLaneLean

structure AdmissibleClass where
  object : HolographicAdmittedObject
  boundarySatisfied : Prop
  bulkRemainderRecorded : Prop
  gateWitness : boundarySatisfied ∨ bulkRemainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HolographicWitnessClosed A.object ∧ (A.boundarySatisfied ∨ A.bulkRemainderRecorded)

end GeometrodynamicsHolographicPrincipleCanonicalLaneLean
end HautevilleHouse