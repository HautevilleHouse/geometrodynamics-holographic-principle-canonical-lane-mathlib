import GeometrodynamicsHolographicPrincipleCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GeometrodynamicsHolographicPrincipleCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.boundarySatisfied ∨ A.bulkRemainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GeometrodynamicsHolographicPrincipleCanonicalLaneLean
end HautevilleHouse