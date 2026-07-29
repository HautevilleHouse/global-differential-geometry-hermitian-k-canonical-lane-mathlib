import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure HirzebruchRiemaRochPackage where
  compactComplexManifold : Type u
  holomorphicVectorBundle : Type v
  chernCharacter : Type w
  toddClass : Type x
  eulerCharacteristicCalculated : Prop
  indexTheoremApplied : Prop

structure HirzebruchRiemaRochEvidence (H : HirzebruchRiemaRochPackage) where
  eulerCharacteristicCalculatedClosed : H.eulerCharacteristicCalculated
  indexTheoremAppliedClosed : H.indexTheoremApplied

def HirzebruchRiemaRochClosed (H : HirzebruchRiemaRochPackage) : Prop :=
  H.eulerCharacteristicCalculated ∧ H.indexTheoremApplied

theorem hirzebruch_riema_roch_closed_from_evidence (H : HirzebruchRiemaRochPackage)
    (E : HirzebruchRiemaRochEvidence H) : HirzebruchRiemaRochClosed H := by
  exact And.intro E.eulerCharacteristicCalculatedClosed E.indexTheoremAppliedClosed

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse