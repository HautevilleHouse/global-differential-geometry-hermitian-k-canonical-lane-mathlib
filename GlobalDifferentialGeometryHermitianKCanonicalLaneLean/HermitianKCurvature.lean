import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure HermitianKCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  complexStructure : Type v
  hermitianMetric : Type w
  connection : Type x
  curvatureForm : Type y
  kaehlerCondition : Prop
  metricCompatible : Prop
  torsionFree : Prop
  curvatureClosed : Prop
  hermitianMetricDefinite : Prop

structure HermitianKCurvatureEvidence (G : HermitianKCurvaturePackage) where
  kaehlerConditionClosed : G.kaehlerCondition
  metricCompatibleClosed : G.metricCompatible
  torsionFreeClosed : G.torsionFree
  curvatureClosedClosed : G.curvatureClosed
  hermitianMetricDefiniteClosed : G.hermitianMetricDefinite

def HermitianKCurvatureClosed (G : HermitianKCurvaturePackage) : Prop :=
  G.kaehlerCondition ∧ G.metricCompatible ∧ G.torsionFree ∧ G.curvatureClosed ∧ G.hermitianMetricDefinite

theorem hermitian_k_curvature_closed_from_evidence
    (G : HermitianKCurvaturePackage) (E : HermitianKCurvatureEvidence G) :
    HermitianKCurvatureClosed G := by
  exact And.intro E.kaehlerConditionClosed
    (And.intro E.metricCompatibleClosed
      (And.intro E.torsionFreeClosed
        (And.intro E.curvatureClosedClosed E.hermitianMetricDefiniteClosed)))

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
