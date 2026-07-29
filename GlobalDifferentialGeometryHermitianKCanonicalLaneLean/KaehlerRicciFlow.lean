import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryHermitianKCanonicalLaneLean.HermitianCurvature

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure KaehlerRicciFlowPackage {G : HermitianCurvaturePackage}
    (HC : HermitianCurvatureClosed G) where
  timeParameter : Type u
  metricEvolution : Type v
  initialKaehlerMetric : Prop
  flowEquation : Prop
  maximalTimeInterval : Prop
  chernRicciCurvature : Type w

structure KaehlerRicciFlowEvidence {G : HermitianCurvaturePackage}
    {HC : HermitianCurvatureClosed G}
    (K : KaehlerRicciFlowPackage HC) where
  initialKaehlerMetricClosed : K.initialKaehlerMetric
  flowEquationClosed : K.flowEquation
  maximalTimeIntervalClosed : K.maximalTimeInterval

def KaehlerRicciFlowClosed {G : HermitianCurvaturePackage}
    {HC : HermitianCurvatureClosed G}
    (K : KaehlerRicciFlowPackage HC) : Prop :=
  K.initialKaehlerMetric ∧ K.flowEquation ∧ K.maximalTimeInterval

theorem kaehler_ricci_flow_closed_from_evidence
    {G : HermitianCurvaturePackage} {HC : HermitianCurvatureClosed G}
    (K : KaehlerRicciFlowPackage HC) (E : KaehlerRicciFlowEvidence K) :
    KaehlerRicciFlowClosed K := by
  exact And.intro E.initialKaehlerMetricClosed
    (And.intro E.flowEquationClosed E.maximalTimeIntervalClosed)

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
