import EarthScienceSedimentologyCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure SedimentologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SedimentologyAdmittedObject where
  space : SedimentologySpace
  sedimentaryBasin : Prop
  layeredStratigraphy : Prop
  depositionalModel : Type
  modelTopology : TopologicalSpace depositionalModel
  faciesDistribution : Prop
  conclusion : faciesDistribution

structure SedimentologyEndgameState where
  object : SedimentologyAdmittedObject

def SedimentologyWitnessClosed (O : SedimentologyAdmittedObject) : Prop :=
  O.faciesDistribution

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse
