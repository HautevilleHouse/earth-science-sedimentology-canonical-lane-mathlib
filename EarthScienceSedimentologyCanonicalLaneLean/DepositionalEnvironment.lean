import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure DepositionalEnvironmentPackage {G : GrainSizePackage} {S : SedimentTransportPackage G} where
  environmentType : Type u
  energyRegime : Type v
  sedimentaryStructures : Prop
  faciesModel : Prop
  paleocurrentIndicators : Prop

structure DepositionalEnvironmentEvidence {G : GrainSizePackage} {S : SedimentTransportPackage G} (D : DepositionalEnvironmentPackage G S) where
  environmentTypeIdentified : D.environmentType
  energyRegimeDetermined : D.energyRegime
  sedimentaryStructuresClosed : D.sedimentaryStructures
  faciesModelClosed : D.faciesModel
  paleocurrentIndicatorsClosed : D.paleocurrentIndicators

def DepositionalEnvironmentClosed {G : GrainSizePackage} {S : SedimentTransportPackage G} (D : DepositionalEnvironmentPackage G S) : Prop :=
  D.sedimentaryStructures ∧ D.faciesModel ∧ D.paleocurrentIndicators

theorem depositional_environment_closed_from_evidence {G : GrainSizePackage} {S : SedimentTransportPackage G} (D : DepositionalEnvironmentPackage G S) (E : DepositionalEnvironmentEvidence D) : DepositionalEnvironmentClosed D := by
  exact And.intro E.sedimentaryStructuresClosed (And.intro E.faciesModelClosed E.paleocurrentIndicatorsClosed)

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse