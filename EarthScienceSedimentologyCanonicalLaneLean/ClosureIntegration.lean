import canonicalLaneMathlib.AdmissibleClass
import EarthScienceSedimentologyCanonicalLaneLean.BasinAnalysis
import EarthScienceSedimentologyCanonicalLaneLean.ProvenanceAnalysis

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure ClosureIntegrationPackage {G : GrainSizePackage} {S : SedimentTransportPackage G} {D : DepositionalEnvironmentPackage G S} {A : StratigraphicArchitecturePackage G S D} {B : BasinAnalysisPackage G S D A} {P : ProvenanceAnalysisPackage G S D A B} where
  transportClosed : SedimentTransportClosed S
  environmentClosed : DepositionalEnvironmentClosed D
  architectureClosed : StratigraphicArchitectureClosed A
  basinClosed : BasinAnalysisClosed B
  provenanceClosed : ProvenanceAnalysisClosed P

structure ClosureIntegrationEvidence {G : GrainSizePackage} {S : SedimentTransportPackage G} {D : DepositionalEnvironmentPackage G S} {A : StratigraphicArchitecturePackage G S D} {B : BasinAnalysisPackage G S D A} {P : ProvenanceAnalysisPackage G S D A B} (I : ClosureIntegrationPackage G S D A B P) where
  transportClosedTerm : I.transportClosed
  environmentClosedTerm : I.environmentClosed
  architectureClosedTerm : I.architectureClosed
  basinClosedTerm : I.basinClosed
  provenanceClosedTerm : I.provenanceClosed

def ClosureIntegrationClosed {G : GrainSizePackage} {S : SedimentTransportPackage G} {D : DepositionalEnvironmentPackage G S} {A : StratigraphicArchitecturePackage G S D} {B : BasinAnalysisPackage G S D A} {P : ProvenanceAnalysisPackage G S D A B} (I : ClosureIntegrationPackage G S D A B P) : Prop :=
  I.transportClosed ∧ I.environmentClosed ∧ I.architectureClosed ∧ I.basinClosed ∧ I.provenanceClosed

theorem closure_integration_closed_from_evidence {G : GrainSizePackage} {S : SedimentTransportPackage G} {D : DepositionalEnvironmentPackage G S} {A : StratigraphicArchitecturePackage G S D} {B : BasinAnalysisPackage G S D A} {P : ProvenanceAnalysisPackage G S D A B} (I : ClosureIntegrationPackage G S D A B P) (E : ClosureIntegrationEvidence I) : ClosureIntegrationClosed I := by
  exact And.intro E.transportClosedTerm (And.intro E.environmentClosedTerm (And.intro E.architectureClosedTerm (And.intro E.basinClosedTerm E.provenanceClosedTerm)))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse