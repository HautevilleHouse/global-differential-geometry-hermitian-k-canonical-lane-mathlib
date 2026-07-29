import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryHermitianKCanonicalLaneLean.HermitianCurvature

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure HermitianEinsteinEquationPackage {G : HermitianCurvaturePackage} where
  hermitianEinsteinCondition : Prop
  constantLambda : Prop
  metricCritical : Prop
  thetaStability : Prop

structure HermitianEinsteinEquationEvidence {G : HermitianCurvaturePackage}
    (H : HermitianEinsteinEquationPackage G) where
  hermitianEinsteinConditionClosed : H.hermitianEinsteinCondition
  constantLambdaClosed : H.constantLambda
  metricCriticalClosed : H.metricCritical
  thetaStabilityClosed : H.thetaStability

def HermitianEinsteinEquationClosed {G : HermitianCurvaturePackage}
    (H : HermitianEinsteinEquationPackage G) : Prop :=
  H.hermitianEinsteinCondition ∧ H.constantLambda ∧
  H.metricCritical ∧ H.thetaStability

theorem hermitian_einstein_equation_closed_from_evidence
    {G : HermitianCurvaturePackage} (H : HermitianEinsteinEquationPackage G)
    (E : HermitianEinsteinEquationEvidence H) : HermitianEinsteinEquationClosed H := by
  exact And.intro E.hermitianEinsteinConditionClosed
    (And.intro E.constantLambdaClosed
      (And.intro E.metricCriticalClosed E.thetaStabilityClosed))

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
