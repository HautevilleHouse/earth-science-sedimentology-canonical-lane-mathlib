import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

def ConstrainedSedimentologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_sedimentology_endgame (A : AdmissibleClass) :
    ConstrainedSedimentologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse