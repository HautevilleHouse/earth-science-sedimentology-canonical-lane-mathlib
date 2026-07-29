import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure SedimentLayerPackage where
  beddingStructures : Prop
  grainSizeDistribution : Prop
  sedimentaryStructures : Prop
  provenanceIndicator : Prop
  depositionalEnvironment : Prop

structure SedimentLayerEvidence (S : SedimentLayerPackage) where
  beddingStructuresClosed : S.beddingStructures
  grainSizeDistributionClosed : S.grainSizeDistribution
  sedimentaryStructuresClosed : S.sedimentaryStructures
  provenanceIndicatorClosed : S.provenanceIndicator
  depositionalEnvironmentClosed : S.depositionalEnvironment

def SedimentLayerClosed (S : SedimentLayerPackage) : Prop :=
  S.beddingStructures ∧ S.grainSizeDistribution ∧ S.sedimentaryStructures ∧
  S.provenanceIndicator ∧ S.depositionalEnvironment

theorem sediment_layer_closed_from_evidence (S : SedimentLayerPackage) (E : SedimentLayerEvidence S) :
    SedimentLayerClosed S := by
  exact And.intro E.beddingStructuresClosed
    (And.intro E.grainSizeDistributionClosed
      (And.intro E.sedimentaryStructuresClosed
        (And.intro E.provenanceIndicatorClosed E.depositionalEnvironmentClosed)))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse