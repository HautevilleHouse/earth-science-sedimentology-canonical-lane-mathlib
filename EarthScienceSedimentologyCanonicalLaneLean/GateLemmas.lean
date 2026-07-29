import EarthScienceSedimentologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse
