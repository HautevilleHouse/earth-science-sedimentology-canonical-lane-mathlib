import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure DiageneticAlterationPackage where
  compactionEffect : Prop
  cementationProcess : Prop
  dissolutionTexture : Prop
  authigenicMineralFormation : Prop
  porosityEvolution : Prop

structure DiageneticAlterationEvidence (D : DiageneticAlterationPackage) where
  compactionEffectClosed : D.compactionEffect
  cementationProcessClosed : D.cementationProcess
  dissolutionTextureClosed : D.dissolutionTexture
  authigenicMineralFormationClosed : D.authigenicMineralFormation
  porosityEvolutionClosed : D.porosityEvolution

def DiageneticAlterationClosed (D : DiageneticAlterationPackage) : Prop :=
  D.compactionEffect ∧ D.cementationProcess ∧ D.dissolutionTexture ∧
  D.authigenicMineralFormation ∧ D.porosityEvolution

theorem diagenetic_alteration_closed_from_evidence (D : DiageneticAlterationPackage)
    (E : DiageneticAlterationEvidence D) : DiageneticAlterationClosed D := by
  exact And.intro E.compactionEffectClosed
    (And.intro E.cementationProcessClosed
      (And.intro E.dissolutionTextureClosed
        (And.intro E.authigenicMineralFormationClosed E.porosityEvolutionClosed)))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse