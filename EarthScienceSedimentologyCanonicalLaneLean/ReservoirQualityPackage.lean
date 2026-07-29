import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure ReservoirQualityPackage where
  porosityModel : Prop
  permeabilityModel : Prop
  poreNetworkGeometry : Prop
  diageneticAlteration : Prop
  reservoirHeterogeneity : Prop

structure ReservoirQualityEvidence (R : ReservoirQualityPackage) where
  porosityModelClosed : R.porosityModel
  permeabilityModelClosed : R.permeabilityModel
  poreNetworkGeometryClosed : R.poreNetworkGeometry
  diageneticAlterationClosed : R.diageneticAlteration
  reservoirHeterogeneityClosed : R.reservoirHeterogeneity

def ReservoirQualityClosed (R : ReservoirQualityPackage) : Prop :=
  R.porosityModel ∧ R.permeabilityModel ∧ R.poreNetworkGeometry ∧
  R.diageneticAlteration ∧ R.reservoirHeterogeneity

theorem reservoir_quality_closed_from_evidence (R : ReservoirQualityPackage)
    (E : ReservoirQualityEvidence R) : ReservoirQualityClosed R := by
  exact And.intro E.porosityModelClosed
    (And.intro E.permeabilityModelClosed
      (And.intro E.poreNetworkGeometryClosed
        (And.intro E.diageneticAlterationClosed E.reservoirHeterogeneityClosed)))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse