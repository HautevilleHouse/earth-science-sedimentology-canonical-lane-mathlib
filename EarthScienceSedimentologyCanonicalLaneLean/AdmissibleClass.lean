import EarthScienceSedimentologyCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure AdmissibleClass where
  object : SedimentologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SedimentologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse
