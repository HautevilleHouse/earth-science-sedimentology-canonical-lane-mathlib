import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure DiageneticPackage where
  compactionModel : Prop
  cementationModel : Prop
  dissolutionModel : Prop
  authigenesisModel : Prop
  recrystallizationModel : Prop

structure DiageneticEvidence (D : DiageneticPackage) where
  compactionModelClosed : D.compactionModel
  cementationModelClosed : D.cementationModel
  dissolutionModelClosed : D.dissolutionModel
  authigenesisModelClosed : D.authigenesisModel
  recrystallizationModelClosed : D.recrystallizationModel

def DiageneticClosed (D : DiageneticPackage) : Prop :=
  D.compactionModel ∧ D.cementationModel ∧ D.dissolutionModel ∧
  D.authigenesisModel ∧ D.recrystallizationModel

theorem diagenetic_closed_from_evidence (D : DiageneticPackage) (E : DiageneticEvidence D) : DiageneticClosed D := by
  exact And.intro E.compactionModelClosed (And.intro E.cementationModelClosed (And.intro E.dissolutionModelClosed (And.intro E.authigenesisModelClosed E.recrystallizationModelClosed)))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse
