import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure SedimentTransportDynamicsPackage where
  flowRegimeClassification : Prop
  bedloadTransport : Prop
  suspendedLoadTransport : Prop
  depositionalRateModel : Prop
  erosionThreshold : Prop

structure SedimentTransportDynamicsEvidence (T : SedimentTransportDynamicsPackage) where
  flowRegimeClassificationClosed : T.flowRegimeClassification
  bedloadTransportClosed : T.bedloadTransport
  suspendedLoadTransportClosed : T.suspendedLoadTransport
  depositionalRateModelClosed : T.depositionalRateModel
  erosionThresholdClosed : T.erosionThreshold

def SedimentTransportDynamicsClosed (T : SedimentTransportDynamicsPackage) : Prop :=
  T.flowRegimeClassification ∧ T.bedloadTransport ∧ T.suspendedLoadTransport ∧
  T.depositionalRateModel ∧ T.erosionThreshold

theorem sediment_transport_dynamics_closed_from_evidence (T : SedimentTransportDynamicsPackage)
    (E : SedimentTransportDynamicsEvidence T) : SedimentTransportDynamicsClosed T := by
  exact And.intro E.flowRegimeClassificationClosed
    (And.intro E.bedloadTransportClosed
      (And.intro E.suspendedLoadTransportClosed
        (And.intro E.depositionalRateModelClosed E.erosionThresholdClosed)))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse