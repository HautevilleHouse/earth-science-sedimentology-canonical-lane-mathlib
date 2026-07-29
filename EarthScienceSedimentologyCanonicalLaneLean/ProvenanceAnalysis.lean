import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure ProvenanceAnalysisPackage {G : GrainSizePackage} {S : SedimentTransportPackage G} {D : DepositionalEnvironmentPackage G S} {A : StratigraphicArchitecturePackage G S D} {B : BasinAnalysisPackage G S D A} where
  sourceRockType : Type u
  heavyMineralAssemblage : Prop
  geochronology : Prop
  paleodrainage : Prop
  tectonicSetting : Prop

structure ProvenanceAnalysisEvidence {G : GrainSizePackage} {S : SedimentTransportPackage G} {D : DepositionalEnvironmentPackage G S} {A : StratigraphicArchitecturePackage G S D} {B : BasinAnalysisPackage G S D A} (P : ProvenanceAnalysisPackage G S D A B) where
  sourceRockTypeIdentified : P.sourceRockType
  heavyMineralAssemblageClosed : P.heavyMineralAssemblage
  geochronologyClosed : P.geochronology
  paleodrainageClosed : P.paleodrainage
  tectonicSettingClosed : P.tectonicSetting

def ProvenanceAnalysisClosed {G : GrainSizePackage} {S : SedimentTransportPackage G} {D : DepositionalEnvironmentPackage G S} {A : StratigraphicArchitecturePackage G S D} {B : BasinAnalysisPackage G S D A} (P : ProvenanceAnalysisPackage G S D A B) : Prop :=
  P.heavyMineralAssemblage ∧ P.geochronology ∧ P.paleodrainage ∧ P.tectonicSetting

theorem provenance_analysis_closed_from_evidence {G : GrainSizePackage} {S : SedimentTransportPackage G} {D : DepositionalEnvironmentPackage G S} {A : StratigraphicArchitecturePackage G S D} {B : BasinAnalysisPackage G S D A} (P : ProvenanceAnalysisPackage G S D A B) (E : ProvenanceAnalysisEvidence P) : ProvenanceAnalysisClosed P := by
  exact And.intro E.heavyMineralAssemblageClosed (And.intro E.geochronologyClosed (And.intro E.paleodrainageClosed E.tectonicSettingClosed))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse