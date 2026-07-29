import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure DiagenesisProcessPackage where
  compaction : Prop
  cementation : Prop
  dissolution : Prop
  recrystallization : Prop
  authigenesis : Prop
  porosityEvolution : Prop
  permeabilityEvolution : Prop

structure DiagenesisProcessEvidence (P : DiagenesisProcessPackage) where
  compactionClosed : P.compaction
  cementationClosed : P.cementation
  dissolutionClosed : P.dissolution
  recrystallizationClosed : P.recrystallization
  authigenesisClosed : P.authigenesis
  porosityEvolutionClosed : P.porosityEvolution
  permeabilityEvolutionClosed : P.permeabilityEvolution

def DiagenesisProcessClosed (P : DiagenesisProcessPackage) : Prop :=
  P.compaction ∧ P.cementation ∧ P.dissolution ∧
  P.recrystallization ∧ P.authigenesis ∧ P.porosityEvolution ∧
  P.permeabilityEvolution

theorem diagenesis_process_closed_from_evidence (P : DiagenesisProcessPackage)
    (E : DiagenesisProcessEvidence P) : DiagenesisProcessClosed P := by
  exact And.intro E.compactionClosed
    (And.intro E.cementationClosed
      (And.intro E.dissolutionClosed
        (And.intro E.recrystallizationClosed
          (And.intro E.authigenesisClosed
            (And.intro E.porosityEvolutionClosed E.permeabilityEvolutionClosed)))))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse