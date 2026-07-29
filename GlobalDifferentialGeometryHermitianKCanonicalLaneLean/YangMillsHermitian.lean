import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryHermitianKCanonicalLaneLean.HermitianCurvature

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure YangMillsHermitianPackage {G : HermitianCurvaturePackage} where
  yangMillsFunctional : Type u
  criticalPoints : Prop
  hermitianYangMillsCondition : Prop
  energyBound : Prop

structure YangMillsHermitianEvidence {G : HermitianCurvaturePackage}
    (Y : YangMillsHermitianPackage G) where
  criticalPointsClosed : Y.criticalPoints
  hermitianYangMillsConditionClosed : Y.hermitianYangMillsCondition
  energyBoundClosed : Y.energyBound

def YangMillsHermitianClosed {G : HermitianCurvaturePackage}
    (Y : YangMillsHermitianPackage G) : Prop :=
  Y.criticalPoints ∧ Y.hermitianYangMillsCondition ∧ Y.energyBound

theorem yang_mills_hermitian_closed_from_evidence
    {G : HermitianCurvaturePackage} (Y : YangMillsHermitianPackage G)
    (E : YangMillsHermitianEvidence Y) : YangMillsHermitianClosed Y := by
  exact And.intro E.criticalPointsClosed
    (And.intro E.hermitianYangMillsConditionClosed E.energyBoundClosed)

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
