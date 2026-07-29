import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure StratigraphicArchitecturePackage where
  accommodationSpace : Prop
  sedimentSupply : Prop
  baseLevelChange : Prop
  sequenceStratigraphy : Prop
  faciesDistribution : Prop

def StratigraphicArchitectureClosed (S : StratigraphicArchitecturePackage) : Prop :=
  S.accommodationSpace ∧ S.sedimentSupply ∧ S.baseLevelChange ∧
  S.sequenceStratigraphy ∧ S.faciesDistribution

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse