import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure DiagenesisPackage where
  compactionModel : Prop
  cementationModel : Prop
  dissolutionModel : Prop
  porosityEvolution : Prop
  diageneticHistory : Prop

structure DiagenesisEvidence (D : DiagenesisPackage) where
  compactionModelClosed : D.compactionModel
  cementationModelClosed : D.cementationModel
  dissolutionModelClosed : D.dissolutionModel
  porosityEvolutionClosed : D.porosityEvolution
  diageneticHistoryClosed : D.diageneticHistory

def DiagenesisClosed (D : DiagenesisPackage) : Prop :=
  D.compactionModel ∧ D.cementationModel ∧ D.dissolutionModel ∧
  D.porosityEvolution ∧ D.diageneticHistory

theorem diagenesis_closed_from_evidence (D : DiagenesisPackage)
    (E : DiagenesisEvidence D) : DiagenesisClosed D := by
  exact And.intro E.compactionModelClosed
    (And.intro E.cementationModelClosed
      (And.intro E.dissolutionModelClosed
        (And.intro E.porosityEvolutionClosed E.diageneticHistoryClosed)))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse