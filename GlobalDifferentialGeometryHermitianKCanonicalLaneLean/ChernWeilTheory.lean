import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryHermitianKCanonicalLaneLean.ChernConnection

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure ChernWeilPackage {G : HermitianCurvaturePackage}
    {C : ChernConnectionPackage G} where
  chernWeilHomomorphism : Type u
  characteristicClasses : Type v
  chernClassesComputed : Prop
  chernNumbersIndependent : Prop

structure ChernWeilEvidence {G : HermitianCurvaturePackage}
    {C : ChernConnectionPackage G} (W : ChernWeilPackage G C) where
  chernClassesComputedClosed : W.chernClassesComputed
  chernNumbersIndependentClosed : W.chernNumbersIndependent

def ChernWeilClosed {G : HermitianCurvaturePackage}
    {C : ChernConnectionPackage G} (W : ChernWeilPackage G C) : Prop :=
  W.chernClassesComputed ∧ W.chernNumbersIndependent

theorem chern_weil_closed_from_evidence
    {G : HermitianCurvaturePackage} {C : ChernConnectionPackage G}
    (W : ChernWeilPackage G C) (E : ChernWeilEvidence W) : ChernWeilClosed W := by
  exact And.intro E.chernClassesComputedClosed E.chernNumbersIndependentClosed

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
