import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure StratigraphyPackage where
  basinGeometry : Prop
  sedimentSupply : Prop
  seaLevelCurve : Prop
  faciesDistribution : Prop
  strataGeometry : Prop
  sedimentTransport : Prop

structure StratigraphyEvidence (S : StratigraphyPackage) where
  basinGeometryClosed : S.basinGeometry
  sedimentSupplyClosed : S.sedimentSupply
  seaLevelCurveClosed : S.seaLevelCurve
  faciesDistributionClosed : S.faciesDistribution
  strataGeometryClosed : S.strataGeometry
  sedimentTransportClosed : S.sedimentTransport

def StratigraphyClosed (S : StratigraphyPackage) : Prop :=
  S.basinGeometry ∧ S.sedimentSupply ∧ S.seaLevelCurve ∧
  S.faciesDistribution ∧ S.strataGeometry ∧ S.sedimentTransport

theorem stratigraphy_closed_from_evidence (S : StratigraphyPackage)
    (E : StratigraphyEvidence S) : StratigraphyClosed S := by
  exact And.intro E.basinGeometryClosed
    (And.intro E.sedimentSupplyClosed
      (And.intro E.seaLevelCurveClosed
        (And.intro E.faciesDistributionClosed
          (And.intro E.strataGeometryClosed E.sedimentTransportClosed))))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse