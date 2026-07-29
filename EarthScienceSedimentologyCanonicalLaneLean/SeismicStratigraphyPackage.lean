import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure SeismicStratigraphyPackage where
  sequenceStratigraphy : Prop
  reflectionGeometry : Prop
  faciesArchitecture : Prop
  seismicAttributeAnalysis : Prop
  chronostratigraphy : Prop

structure SeismicStratigraphyEvidence (S : SeismicStratigraphyPackage) where
  sequenceStratigraphyClosed : S.sequenceStratigraphy
  reflectionGeometryClosed : S.reflectionGeometry
  faciesArchitectureClosed : S.faciesArchitecture
  seismicAttributeAnalysisClosed : S.seismicAttributeAnalysis
  chronostratigraphyClosed : S.chronostratigraphy

def SeismicStratigraphyClosed (S : SeismicStratigraphyPackage) : Prop :=
  S.sequenceStratigraphy ∧ S.reflectionGeometry ∧ S.faciesArchitecture ∧
  S.seismicAttributeAnalysis ∧ S.chronostratigraphy

theorem seismic_stratigraphy_closed_from_evidence (S : SeismicStratigraphyPackage)
    (E : SeismicStratigraphyEvidence S) : SeismicStratigraphyClosed S := by
  exact And.intro E.sequenceStratigraphyClosed
    (And.intro E.reflectionGeometryClosed
      (And.intro E.faciesArchitectureClosed
        (And.intro E.seismicAttributeAnalysisClosed E.chronostratigraphyClosed)))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse