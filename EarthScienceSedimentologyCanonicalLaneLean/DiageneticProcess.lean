import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure DiageneticProcessPackage where
  compaction : Prop
  cementation : Prop
  dissolution : Prop
  authigenesis : Prop
  porosityEvolution : Prop

def DiageneticProcessClosed (D : DiageneticProcessPackage) : Prop :=
  D.compaction ∧ D.cementation ∧ D.dissolution ∧
  D.authigenesis ∧ D.porosityEvolution

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse