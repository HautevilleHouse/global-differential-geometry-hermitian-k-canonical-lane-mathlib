import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure HolonomyPackage {G : HermitianKCurvaturePackage}
    {C : ChernConnectionPackage G} where
  holonomyGroup : Type u
  holonomyLieAlgebra : Type v
  parallelTransport : Type w
  holonomyReduction : Prop
  ambrosioSingerTheorem : Prop
  curvatureCharacterization : Prop
  holonomyGroupComputed : Prop
  holonomyLieAlgebraComputed : Prop
  parallelTransportDefined : Prop

structure HolonomyEvidence {G : HermitianKCurvaturePackage}
    {C : ChernConnectionPackage G} (H : HolonomyPackage G C) where
  holonomyReductionClosed : H.holonomyReduction
  ambrosioSingerTheoremClosed : H.ambrosioSingerTheorem
  curvatureCharacterizationClosed : H.curvatureCharacterization
  holonomyGroupComputedClosed : H.holonomyGroupComputed
  holonomyLieAlgebraComputedClosed : H.holonomyLieAlgebraComputed
  parallelTransportDefinedClosed : H.parallelTransportDefined

def HolonomyClosed {G : HermitianKCurvaturePackage}
    {C : ChernConnectionPackage G} (H : HolonomyPackage G C) : Prop :=
  H.holonomyReduction ∧ H.ambrosioSingerTheorem ∧ H.curvatureCharacterization ∧
  H.holonomyGroupComputed ∧ H.holonomyLieAlgebraComputed ∧ H.parallelTransportDefined

theorem holonomy_closed_from_evidence
    {G : HermitianKCurvaturePackage} {C : ChernConnectionPackage G}
    (H : HolonomyPackage G C) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.holonomyReductionClosed
    (And.intro E.ambrosioSingerTheoremClosed
      (And.intro E.curvatureCharacterizationClosed
        (And.intro E.holonomyGroupComputedClosed
          (And.intro E.holonomyLieAlgebraComputedClosed E.parallelTransportDefinedClosed))))

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
