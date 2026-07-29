import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure IndexTheoremPackage {G : HermitianKCurvaturePackage}
    {C : ChernConnectionPackage G} {H : HolonomyPackage G C} where
  diracOperator : Type u
  indexMap : Type v
  analyticIndex : Prop
  topologicalIndex : Prop
  atiyahSingerTheorem : Prop
  chernCharacterDefined : Prop
  toddClassDefined : Prop
  indexFormula : Prop

structure IndexTheoremEvidence {G : HermitianKCurvaturePackage}
    {C : ChernConnectionPackage G} {H : HolonomyPackage G C}
    (I : IndexTheoremPackage G C H) where
  diracOperatorClosed : I.diracOperator
  indexMapClosed : I.indexMap
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  atiyahSingerTheoremClosed : I.atiyahSingerTheorem
  chernCharacterDefinedClosed : I.chernCharacterDefined
  toddClassDefinedClosed : I.toddClassDefined
  indexFormulaClosed : I.indexFormula

def IndexTheoremClosed {G : HermitianKCurvaturePackage}
    {C : ChernConnectionPackage G} {H : HolonomyPackage G C}
    (I : IndexTheoremPackage G C H) : Prop :=
  I.diracOperator ∧ I.indexMap ∧ I.analyticIndex ∧ I.topologicalIndex ∧
  I.atiyahSingerTheorem ∧ I.chernCharacterDefined ∧ I.toddClassDefined ∧ I.indexFormula

theorem index_theorem_closed_from_evidence
    {G : HermitianKCurvaturePackage} {C : ChernConnectionPackage G}
    {H : HolonomyPackage G C} (I : IndexTheoremPackage G C H)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.diracOperatorClosed
    (And.intro E.indexMapClosed
      (And.intro E.analyticIndexClosed
        (And.intro E.topologicalIndexClosed
          (And.intro E.atiyahSingerTheoremClosed
            (And.intro E.chernCharacterDefinedClosed
              (And.intro E.toddClassDefinedClosed E.indexFormulaClosed))))))

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
