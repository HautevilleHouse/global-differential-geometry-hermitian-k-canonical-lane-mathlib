import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryHermitianKCanonicalLaneLean.ChernCharacterIndex
import HautevilleHouse.GlobalDifferentialGeometryHermitianKCanonicalLaneLean.ChernWeilConstruction

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure KTheoreticIndexPackage {G : HermitianCurvaturePackage}
    {HC : HermitianCurvatureClosed G}
    {Chern : ChernCharacterIndexPackage HC} {CW : ChernWeilConstructionPackage HC}
    (CIC : ChernCharacterIndexClosed Chern) (CWC : ChernWeilConstructionClosed CW) where
  kTheoryGroup : Type u
  analyticIndex : Prop
  topologicalIndex : Prop
  indexTheoremEquality : Prop
  cohomologicalPushforward : Prop

structure KTheoreticIndexEvidence {G : HermitianCurvaturePackage}
    {HC : HermitianCurvatureClosed G}
    {Chern : ChernCharacterIndexPackage HC} {CW : ChernWeilConstructionPackage HC}
    {CIC : ChernCharacterIndexClosed Chern} {CWC : ChernWeilConstructionClosed CW}
    (K : KTheoreticIndexPackage CIC CWC) where
  analyticIndexClosed : K.analyticIndex
  topologicalIndexClosed : K.topologicalIndex
  indexTheoremEqualityClosed : K.indexTheoremEquality
  cohomologicalPushforwardClosed : K.cohomologicalPushforward

def KTheoreticIndexClosed {G : HermitianCurvaturePackage}
    {HC : HermitianCurvatureClosed G}
    {Chern : ChernCharacterIndexPackage HC} {CW : ChernWeilConstructionPackage HC}
    {CIC : ChernCharacterIndexClosed Chern} {CWC : ChernWeilConstructionClosed CW}
    (K : KTheoreticIndexPackage CIC CWC) : Prop :=
  K.analyticIndex ∧ K.topologicalIndex ∧
  K.indexTheoremEquality ∧ K.cohomologicalPushforward

theorem k_theoretic_index_closed_from_evidence
    {G : HermitianCurvaturePackage} {HC : HermitianCurvatureClosed G}
    {Chern : ChernCharacterIndexPackage HC} {CW : ChernWeilConstructionPackage HC}
    {CIC : ChernCharacterIndexClosed Chern} {CWC : ChernWeilConstructionClosed CW}
    (K : KTheoreticIndexPackage CIC CWC) (E : KTheoreticIndexEvidence K) :
    KTheoreticIndexClosed K := by
  exact And.intro E.analyticIndexClosed
    (And.intro E.topologicalIndexClosed
      (And.intro E.indexTheoremEqualityClosed E.cohomologicalPushforwardClosed))

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
