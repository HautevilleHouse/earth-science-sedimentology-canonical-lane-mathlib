import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceSedimentologyCanonicalLaneLean

structure SedimentTransportPackage where
  sedimentSource : Prop
  transportMechanism : Prop
  depositionRegime : Prop
  erosionRate : Prop
  continuityEquation : Prop
  bedloadTransport : Prop
  suspendedLoad : Prop
  totalLoad : Prop

structure SedimentTransportEvidence (P : SedimentTransportPackage) where
  sedimentSourceClosed : P.sedimentSource
  transportMechanismClosed : P.transportMechanism
  depositionRegimeClosed : P.depositionRegime
  erosionRateClosed : P.erosionRate
  continuityEquationClosed : P.continuityEquation
  bedloadTransportClosed : P.bedloadTransport
  suspendedLoadClosed : P.suspendedLoad
  totalLoadClosed : P.totalLoad

def SedimentTransportClosed (P : SedimentTransportPackage) : Prop :=
  P.sedimentSource ∧ P.transportMechanism ∧ P.depositionRegime ∧
  P.erosionRate ∧ P.continuityEquation ∧ P.bedloadTransport ∧
  P.suspendedLoad ∧ P.totalLoad

theorem sediment_transport_closed_from_evidence (P : SedimentTransportPackage)
    (E : SedimentTransportEvidence P) : SedimentTransportClosed P := by
  exact And.intro E.sedimentSourceClosed
    (And.intro E.transportMechanismClosed
      (And.intro E.depositionRegimeClosed
        (And.intro E.erosionRateClosed
          (And.intro E.continuityEquationClosed
            (And.intro E.bedloadTransportClosed
              (And.intro E.suspendedLoadClosed E.totalLoadClosed))))))

end EarthScienceSedimentologyCanonicalLaneLean
end HautevilleHouse