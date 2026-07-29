import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure DepositionalSystem where
  fluvialSystem : Prop
  deltaicSystem : Prop
  shallowMarine : Prop
  deepMarine : Prop
  glacialSystem : Prop
  eolianSystem : Prop

structure DepositionalEvidence (D : DepositionalSystem) where
  fluvialSystemClosed : D.fluvialSystem
  deltaicSystemClosed : D.deltaicSystem
  shallowMarineClosed : D.shallowMarine
  deepMarineClosed : D.deepMarine
  glacialSystemClosed : D.glacialSystem
  eolianSystemClosed : D.eolianSystem

def DepositionalClosed (D : DepositionalSystem) : Prop :=
  D.fluvialSystem ∧ D.deltaicSystem ∧ D.shallowMarine ∧
  D.deepMarine ∧ D.glacialSystem ∧ D.eolianSystem

theorem depositional_closed_from_evidence (D : DepositionalSystem) (E : DepositionalEvidence D) : DepositionalClosed D := by
  exact And.intro E.fluvialSystemClosed (And.intro E.deltaicSystemClosed (And.intro E.shallowMarineClosed (And.intro E.deepMarineClosed (And.intro E.glacialSystemClosed E.eolianSystemClosed))))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse
