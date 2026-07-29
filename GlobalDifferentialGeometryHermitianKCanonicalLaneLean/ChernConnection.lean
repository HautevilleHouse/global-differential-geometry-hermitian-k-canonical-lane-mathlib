import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure ChernConnectionPackage {G : HermitianKCurvaturePackage} where
  connectionOneForm : Type u
  curvatureTwoForm : Type v
  firstChernClass : Type w
  chernWeilHomomorphism : Type x
  connectionDefined : Prop
  curvatureComputed : Prop
  chernClassClosed : Prop
  weilHomomorphismDefined : Prop

structure ChernConnectionEvidence {G : HermitianKCurvaturePackage}
    (C : ChernConnectionPackage G) where
  connectionDefinedClosed : C.connectionDefined
  curvatureComputedClosed : C.curvatureComputed
  chernClassClosedClosed : C.chernClassClosed
  weilHomomorphismDefinedClosed : C.weilHomomorphismDefined

def ChernConnectionClosed {G : HermitianKCurvaturePackage}
    (C : ChernConnectionPackage G) : Prop :=
  C.connectionDefined ∧ C.curvatureComputed ∧ C.chernClassClosed ∧ C.weilHomomorphismDefined

theorem chern_connection_closed_from_evidence
    {G : HermitianKCurvaturePackage} (C : ChernConnectionPackage G)
    (E : ChernConnectionEvidence C) : ChernConnectionClosed C := by
  exact And.intro E.connectionDefinedClosed
    (And.intro E.curvatureComputedClosed
      (And.intro E.chernClassClosedClosed E.weilHomomorphismDefinedClosed))

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
