import EarthScienceSedimentologyCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SedimentologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse
