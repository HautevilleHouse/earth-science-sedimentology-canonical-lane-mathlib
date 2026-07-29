import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure PorosityPermeabilityPackage where
  totalPorosity : Float
  effectivePorosity : Float
  permeability : Float
  poreThroatRadius : Float
  cementationFactor : Float

structure PorosityPermeabilityEvidence (P : PorosityPermeabilityPackage) where
  totalPorosityClosed : P.totalPorosity > 0.0 ∧ P.totalPorosity < 1.0
  effectivePorosityClosed : P.effectivePorosity > 0.0 ∧ P.effectivePorosity ≤ P.totalPorosity
  permeabilityClosed : P.permeability > 0.0
  poreThroatRadiusClosed : P.poreThroatRadius > 0.0
  cementationFactorClosed : P.cementationFactor > 0.0

def PorosityPermeabilityClosed (P : PorosityPermeabilityPackage) : Prop :=
  P.totalPorosity > 0.0 ∧ P.totalPorosity < 1.0 ∧ P.effectivePorosity > 0.0 ∧
  P.effectivePorosity ≤ P.totalPorosity ∧ P.permeability > 0.0 ∧
  P.poreThroatRadius > 0.0 ∧ P.cementationFactor > 0.0

theorem porosity_permeability_closed_from_evidence (P : PorosityPermeabilityPackage) (E : PorosityPermeabilityEvidence P) : PorosityPermeabilityClosed P := by
  have htotal : P.totalPorosity > 0.0 ∧ P.totalPorosity < 1.0 := E.totalPorosityClosed
  have heff : P.effectivePorosity > 0.0 ∧ P.effectivePorosity ≤ P.totalPorosity := E.effectivePorosityClosed
  exact And.intro (And.left htotal) (And.intro (And.right htotal) (And.intro (And.left heff) (And.intro (And.right heff) (And.intro E.permeabilityClosed (And.intro E.poreThroatRadiusClosed E.cementationFactorClosed)))))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse
