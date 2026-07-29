import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure BasinAnalysisPackage where
  subsidenceHistory : Prop
  sedimentSupply : Prop
  seaLevelChange : Prop
  tectonicSetting : Prop
  basinFillGeometry : Prop

structure BasinAnalysisEvidence (B : BasinAnalysisPackage) where
  subsidenceHistoryClosed : B.subsidenceHistory
  sedimentSupplyClosed : B.sedimentSupply
  seaLevelChangeClosed : B.seaLevelChange
  tectonicSettingClosed : B.tectonicSetting
  basinFillGeometryClosed : B.basinFillGeometry

def BasinAnalysisClosed (B : BasinAnalysisPackage) : Prop :=
  B.subsidenceHistory ∧ B.sedimentSupply ∧ B.seaLevelChange ∧
  B.tectonicSetting ∧ B.basinFillGeometry

theorem basin_analysis_closed_from_evidence (B : BasinAnalysisPackage) (E : BasinAnalysisEvidence B) : BasinAnalysisClosed B := by
  exact And.intro E.subsidenceHistoryClosed (And.intro E.sedimentSupplyClosed (And.intro E.seaLevelChangeClosed (And.intro E.tectonicSettingClosed E.basinFillGeometryClosed)))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse
