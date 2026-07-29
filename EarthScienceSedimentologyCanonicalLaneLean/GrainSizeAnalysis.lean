import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure GrainSizeDistribution where
  meanGrainSize : Float
  sorting : Float
  skewness : Float
  kurtosis : Float
  modalFraction : Float

structure GrainSizeEvidence (G : GrainSizeDistribution) where
  meanGrainSizeClosed : G.meanGrainSize > 0.0
  sortingClosed : G.sorting > 0.0
  skewnessClosed : True
  kurtosisClosed : True
  modalFractionClosed : G.modalFraction > 0.0 ∧ G.modalFraction ≤ 1.0

def GrainSizeClosed (G : GrainSizeDistribution) : Prop :=
  G.meanGrainSize > 0.0 ∧ G.sorting > 0.0 ∧ G.modalFraction > 0.0 ∧ G.modalFraction ≤ 1.0

theorem grain_size_closed_from_evidence (G : GrainSizeDistribution) (E : GrainSizeEvidence G) : GrainSizeClosed G := by
  exact And.intro E.meanGrainSizeClosed (And.intro E.sortingClosed (And.intro (And.left E.modalFractionClosed) (And.right E.modalFractionClosed)))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse
