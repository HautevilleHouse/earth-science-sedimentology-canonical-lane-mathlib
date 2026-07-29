import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure StratigraphicPackage where
  lithologyFrame : Type u
  beddingContinuity : Prop
  faciesTransition : Prop
  sequenceStratigraphy : Prop
  sedimentAccommodation : Prop
  provenanceIndicator : Prop

structure StratigraphicEvidence (S : StratigraphicPackage) where
  beddingContinuityClosed : S.beddingContinuity
  faciesTransitionClosed : S.faciesTransition
  sequenceStratigraphyClosed : S.sequenceStratigraphy
  sedimentAccommodationClosed : S.sedimentAccommodation
  provenanceIndicatorClosed : S.provenanceIndicator

def StratigraphicClosed (S : StratigraphicPackage) : Prop :=
  S.beddingContinuity ∧ S.faciesTransition ∧ S.sequenceStratigraphy ∧
  S.sedimentAccommodation ∧ S.provenanceIndicator

theorem stratigraphic_closed_from_evidence (S : StratigraphicPackage) (E : StratigraphicEvidence S) : StratigraphicClosed S := by
  exact And.intro E.beddingContinuityClosed (And.intro E.faciesTransitionClosed (And.intro E.sequenceStratigraphyClosed (And.intro E.sedimentAccommodationClosed E.provenanceIndicatorClosed)))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse
