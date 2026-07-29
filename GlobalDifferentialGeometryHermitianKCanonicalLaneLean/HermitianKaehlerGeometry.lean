import GlobalDifferentialGeometryHermitianKCanonicalLaneLean.HermitianKAdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure HermitianKaehlerPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  complexStructure : Prop
  hermitianMetric : Prop
  kaehlerCondition : Prop
  ricciCurvatureType : Type v
  scalarCurvatureType : Type w

structure HermitianKaehlerEvidence (P : HermitianKaehlerPackage) where
  complexStructureClosed : P.complexStructure
  hermitianMetricClosed : P.hermitianMetric
  kaehlerConditionClosed : P.kaehlerCondition

def HermitianKaehlerClosed (P : HermitianKaehlerPackage) : Prop :=
  P.complexStructure ∧ P.hermitianMetric ∧ P.kaehlerCondition

theorem hermitian_kaehler_closed_from_evidence (P : HermitianKaehlerPackage)
    (E : HermitianKaehlerEvidence P) : HermitianKaehlerClosed P := by
  exact And.intro E.complexStructureClosed
    (And.intro E.hermitianMetricClosed E.kaehlerConditionClosed)

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
