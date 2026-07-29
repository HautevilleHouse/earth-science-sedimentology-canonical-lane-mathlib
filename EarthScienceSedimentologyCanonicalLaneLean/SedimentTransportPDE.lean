import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure SedimentTransportPDEPackage where
  timeParameter : Type u
  spatialDomain : Type v
  bathymetry : spatialDomain -> Type w
  sedimentFlux : spatialDomain -> Type x
  continuityEquation : Prop
  exnerEquation : Prop
  boundaryConditions : Prop

def SedimentTransportPDEClosed (P : SedimentTransportPDEPackage) : Prop :=
  P.continuityEquation ∧ P.exnerEquation ∧ P.boundaryConditions

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse