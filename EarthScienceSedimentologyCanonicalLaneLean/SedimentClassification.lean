import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure SedimentClassificationPackage where
  grainSizeDistribution : Prop
  mineralogicalComposition : Prop
  sortingAndMaturity : Prop
  texturalClassification : Prop

def SedimentClassificationClosed (S : SedimentClassificationPackage) : Prop :=
  S.grainSizeDistribution ∧ S.mineralogicalComposition ∧
  S.sortingAndMaturity ∧ S.texturalClassification

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse