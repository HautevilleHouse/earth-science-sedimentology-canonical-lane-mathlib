import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure BasinAnalysisPackage where
  subsidenceHistory : Prop
  thermalHistory : Prop
  sedimentBudget : Prop
  basinFillModel : Prop
  geodynamicSetting : Prop

structure BasinAnalysisEvidence (B : BasinAnalysisPackage) where
  subsidenceHistoryClosed : B.subsidenceHistory
  thermalHistoryClosed : B.thermalHistory
  sedimentBudgetClosed : B.sedimentBudget
  basinFillModelClosed : B.basinFillModel
  geodynamicSettingClosed : B.geodynamicSetting

def BasinAnalysisClosed (B : BasinAnalysisPackage) : Prop :=
  B.subsidenceHistory ∧ B.thermalHistory ∧ B.sedimentBudget ∧
  B.basinFillModel ∧ B.geodynamicSetting

theorem basin_analysis_closed_from_evidence (B : BasinAnalysisPackage)
    (E : BasinAnalysisEvidence B) : BasinAnalysisClosed B := by
  exact And.intro E.subsidenceHistoryClosed
    (And.intro E.thermalHistoryClosed
      (And.intro E.sedimentBudgetClosed
        (And.intro E.basinFillModelClosed E.geodynamicSettingClosed)))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse