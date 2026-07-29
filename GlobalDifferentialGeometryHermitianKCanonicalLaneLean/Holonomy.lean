import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure HolonomyPackage where
  holonomyGroup : Type u
  reducedHolonomy : Type v
  holonomyInvariantSubspace : Type w
  holonomyClosedSubgroup : Prop
  holonomyReduction : Prop
  bergerListCompatible : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  holonomyClosedSubgroupClosed : H.holonomyClosedSubgroup
  holonomyReductionClosed : H.holonomyReduction
  bergerListCompatibleClosed : H.bergerListCompatible

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.holonomyClosedSubgroup ∧ H.holonomyReduction ∧ H.bergerListCompatible

theorem holonomy_closed_from_evidence
    (H : HolonomyPackage) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.holonomyClosedSubgroupClosed
    (And.intro E.holonomyReductionClosed E.bergerListCompatibleClosed)

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse