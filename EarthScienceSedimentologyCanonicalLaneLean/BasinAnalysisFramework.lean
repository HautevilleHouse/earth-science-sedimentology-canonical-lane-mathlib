import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure BasinAnalysisFrameworkPackage where
  subsidenceHistory : Prop
  sedimentSupplyBudget : Prop
  accommodationSpaceModel : Prop
  tectonicForcingInput : Prop
  basinFillGeometry : Prop

structure BasinAnalysisFrameworkEvidence (B : BasinAnalysisFrameworkPackage) where
  subsidenceHistoryClosed : B.subsidenceHistory
  sedimentSupplyBudgetClosed : B.sedimentSupplyBudget
  accommodationSpaceModelClosed : B.accommodationSpaceModel
  tectonicForcingInputClosed : B.tectonicForcingInput
  basinFillGeometryClosed : B.basinFillGeometry

def BasinAnalysisFrameworkClosed (B : BasinAnalysisFrameworkPackage) : Prop :=
  B.subsidenceHistory ∧ B.sedimentSupplyBudget ∧ B.accommodationSpaceModel ∧
  B.tectonicForcingInput ∧ B.basinFillGeometry

theorem basin_analysis_framework_closed_from_evidence (B : BasinAnalysisFrameworkPackage)
    (E : BasinAnalysisFrameworkEvidence B) : BasinAnalysisFrameworkClosed B := by
  exact And.intro E.subsidenceHistoryClosed
    (And.intro E.sedimentSupplyBudgetClosed
      (And.intro E.accommodationSpaceModelClosed
        (And.intro E.tectonicForcingInputClosed E.basinFillGeometryClosed)))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse