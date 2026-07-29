import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure KobayashiMetricPackage where
  complexManifold : Type u
  tangentBundle : Type v
  infinitesimalMetric : Type w
  integratedDistance : Type x
  roydenTheorem : Prop
  upperSemicontinuity : Prop

structure KobayashiMetricEvidence (K : KobayashiMetricPackage) where
  roydenTheoremClosed : K.roydenTheorem
  upperSemicontinuityClosed : K.upperSemicontinuity

def KobayashiMetricClosed (K : KobayashiMetricPackage) : Prop :=
  K.roydenTheorem ∧ K.upperSemicontinuity

theorem kobayashi_metric_closed_from_evidence (K : KobayashiMetricPackage)
    (E : KobayashiMetricEvidence K) : KobayashiMetricClosed K := by
  exact And.intro E.roydenTheoremClosed E.upperSemicontinuityClosed

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse