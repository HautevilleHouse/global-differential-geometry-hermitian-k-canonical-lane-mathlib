import GlobalDifferentialGeometryHermitianKCanonicalLaneLean.HolonomyPackage

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure IndexTheoremPackage {H : HermitianKaehlerPackage}
    {C : ChernCharacterPackage H} {L : HolonomyPackage H C} where
  diracOperator : Type u
  analyticIndex : Prop
  topologicalIndex : Prop
  atiyahSingerRelation : Prop

structure IndexTheoremEvidence {H : HermitianKaehlerPackage}
    {C : ChernCharacterPackage H} {L : HolonomyPackage H C}
    (I : IndexTheoremPackage H C L) where
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  atiyahSingerRelationClosed : I.atiyahSingerRelation

def IndexTheoremClosed {H : HermitianKaehlerPackage}
    {C : ChernCharacterPackage H} {L : HolonomyPackage H C}
    (I : IndexTheoremPackage H C L) : Prop :=
  I.analyticIndex ∧ I.topologicalIndex ∧ I.atiyahSingerRelation

theorem index_theorem_closed_from_evidence {H : HermitianKaehlerPackage}
    {C : ChernCharacterPackage H} {L : HolonomyPackage H C}
    (I : IndexTheoremPackage H C L) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.analyticIndexClosed
    (And.intro E.topologicalIndexClosed E.atiyahSingerRelationClosed)

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
