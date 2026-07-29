import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryHermitianKCanonicalLaneLean.HermitianEinsteinEquation
import HautevilleHouse.GlobalDifferentialGeometryHermitianKCanonicalLaneLean.ChernConnection

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure KobayashiHitchinPackage {G : HermitianCurvaturePackage}
    {C : ChernConnectionPackage G} {H : HermitianEinsteinEquationPackage G} where
  slopeStability : Prop
  existenceHermitianEinsteinMetric : Prop
  equivalenceEstablished : Prop

structure KobayashiHitchinEvidence {G : HermitianCurvaturePackage}
    {C : ChernConnectionPackage G} {H : HermitianEinsteinEquationPackage G}
    (K : KobayashiHitchinPackage G C H) where
  slopeStabilityClosed : K.slopeStability
  existenceHermitianEinsteinMetricClosed : K.existenceHermitianEinsteinMetric
  equivalenceEstablishedClosed : K.equivalenceEstablished

def KobayashiHitchinClosed {G : HermitianCurvaturePackage}
    {C : ChernConnectionPackage G} {H : HermitianEinsteinEquationPackage G}
    (K : KobayashiHitchinPackage G C H) : Prop :=
  K.slopeStability ∧ K.existenceHermitianEinsteinMetric ∧ K.equivalenceEstablished

theorem kobayashi_hitchin_closed_from_evidence
    {G : HermitianCurvaturePackage} {C : ChernConnectionPackage G}
    {H : HermitianEinsteinEquationPackage G}
    (K : KobayashiHitchinPackage G C H) (E : KobayashiHitchinEvidence K) :
    KobayashiHitchinClosed K := by
  exact And.intro E.slopeStabilityClosed
    (And.intro E.existenceHermitianEinsteinMetricClosed E.equivalenceEstablishedClosed)

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
