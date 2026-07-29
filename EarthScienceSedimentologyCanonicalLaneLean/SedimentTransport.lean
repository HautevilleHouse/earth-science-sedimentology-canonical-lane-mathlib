import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure SedimentTransportPackage (G : GrainSizePackage) where
  timeParameter : Type u
  grainSizeAt : timeParameter -> Type v
  initialGrainSizeProfile : Prop
  advectionDiffusionEquation : Prop
  boundaryConditions : Prop
  maximalTimeInterval : Prop

structure SedimentTransportEvidence {G : GrainSizePackage} (F : SedimentTransportPackage G) where
  initialGrainSizeProfileClosed : F.initialGrainSizeProfile
  advectionDiffusionEquationClosed : F.advectionDiffusionEquation
  boundaryConditionsClosed : F.boundaryConditions
  maximalTimeIntervalClosed : F.maximalTimeInterval

def SedimentTransportClosed {G : GrainSizePackage} (F : SedimentTransportPackage G) : Prop :=
  F.initialGrainSizeProfile ∧ F.advectionDiffusionEquation ∧ F.boundaryConditions ∧ F.maximalTimeInterval

theorem sediment_transport_closed_from_evidence {G : GrainSizePackage} (F : SedimentTransportPackage G) (E : SedimentTransportEvidence F) : SedimentTransportClosed F := by
  exact And.intro E.initialGrainSizeProfileClosed (And.intro E.advectionDiffusionEquationClosed (And.intro E.boundaryConditionsClosed E.maximalTimeIntervalClosed))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse