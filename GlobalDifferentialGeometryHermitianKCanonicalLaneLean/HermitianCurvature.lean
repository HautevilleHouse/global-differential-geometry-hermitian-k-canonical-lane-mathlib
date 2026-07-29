import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure HermitianCurvaturePackage where
  baseManifold : Type u
  topology : TopologicalSpace baseManifold
  complexStructure : Type v
  hermitianMetric : Type w
  curvatureForm : Type x
  riemannCurvatureTensor : Type y
  ricciCurvature : Type z
  scalarCurvature : Type a
  kahlerIdentities : Prop
  hermitianChristoffelSymbols : Prop
  curvatureSymmetries : Prop
  ricciFormClosed : Prop

structure HermitianCurvatureEvidence (G : HermitianCurvaturePackage) where
  kahlerIdentitiesClosed : G.kahlerIdentities
  hermitianChristoffelSymbolsClosed : G.hermitianChristoffelSymbols
  curvatureSymmetriesClosed : G.curvatureSymmetries
  ricciFormClosedClosed : G.ricciFormClosed

def HermitianCurvatureClosed (G : HermitianCurvaturePackage) : Prop :=
  G.kahlerIdentities ∧ G.hermitianChristoffelSymbols ∧
  G.curvatureSymmetries ∧ G.ricciFormClosed

theorem hermitian_curvature_closed_from_evidence
    (G : HermitianCurvaturePackage) (E : HermitianCurvatureEvidence G) :
    HermitianCurvatureClosed G := by
  exact And.intro E.kahlerIdentitiesClosed
    (And.intro E.hermitianChristoffelSymbolsClosed
      (And.intro E.curvatureSymmetriesClosed E.ricciFormClosedClosed))

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
