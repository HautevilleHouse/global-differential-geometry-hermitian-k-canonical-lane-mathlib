import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryHermitianKCanonicalLaneLean.HermitianCurvature

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure ChernCharacterIndexPackage {G : HermitianCurvaturePackage}
    (HC : HermitianCurvatureClosed G) where
  chernCharacter : Type u
  toddClass : Type v
  riemannRochIntegrand : Prop
  indexTheoremStatement : Prop
  sheafCohomologyEulerCharacteristic : Prop
  indexComputed : Prop

structure ChernCharacterIndexEvidence {G : HermitianCurvaturePackage}
    {HC : HermitianCurvatureClosed G}
    (P : ChernCharacterIndexPackage HC) where
  riemannRochIntegrandClosed : P.riemannRochIntegrand
  indexTheoremStatementClosed : P.indexTheoremStatement
  sheafCohomologyEulerCharacteristicClosed : P.sheafCohomologyEulerCharacteristic
  indexComputedClosed : P.indexComputed

def ChernCharacterIndexClosed {G : HermitianCurvaturePackage}
    {HC : HermitianCurvatureClosed G}
    (P : ChernCharacterIndexPackage HC) : Prop :=
  P.riemannRochIntegrand ∧ P.indexTheoremStatement ∧
  P.sheafCohomologyEulerCharacteristic ∧ P.indexComputed

theorem chern_character_index_closed_from_evidence
    {G : HermitianCurvaturePackage} {HC : HermitianCurvatureClosed G}
    (P : ChernCharacterIndexPackage HC) (E : ChernCharacterIndexEvidence P) :
    ChernCharacterIndexClosed P := by
  exact And.intro E.riemannRochIntegrandClosed
    (And.intro E.indexTheoremStatementClosed
      (And.intro E.sheafCohomologyEulerCharacteristicClosed E.indexComputedClosed))

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
