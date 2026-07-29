import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryHermitianKCanonicalLaneLean.HermitianCurvature

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure ChernWeilConstructionPackage {G : HermitianCurvaturePackage}
    (HC : HermitianCurvatureClosed G) where
  invariantPolynomial : Type u
  curvatureForm : Type v
  chernClassBuilt : Prop
  pontrjaginClassBuilt : Prop
  eulerClassBuilt : Prop
  weilHomomorphism : Prop

structure ChernWeilConstructionEvidence {G : HermitianCurvaturePackage}
    {HC : HermitianCurvatureClosed G}
    (C : ChernWeilConstructionPackage HC) where
  chernClassBuiltClosed : C.chernClassBuilt
  pontrjaginClassBuiltClosed : C.pontrjaginClassBuilt
  eulerClassBuiltClosed : C.eulerClassBuilt
  weilHomomorphismClosed : C.weilHomomorphism

def ChernWeilConstructionClosed {G : HermitianCurvaturePackage}
    {HC : HermitianCurvatureClosed G}
    (C : ChernWeilConstructionPackage HC) : Prop :=
  C.chernClassBuilt ∧ C.pontrjaginClassBuilt ∧
  C.eulerClassBuilt ∧ C.weilHomomorphism

theorem chern_weil_construction_closed_from_evidence
    {G : HermitianCurvaturePackage} {HC : HermitianCurvatureClosed G}
    (C : ChernWeilConstructionPackage HC) (E : ChernWeilConstructionEvidence C) :
    ChernWeilConstructionClosed C := by
  exact And.intro E.chernClassBuiltClosed
    (And.intro E.pontrjaginClassBuiltClosed
      (And.intro E.eulerClassBuiltClosed E.weilHomomorphismClosed))

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
