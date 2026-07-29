import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure ChernClassesPackage where
  chernClassLevel : Nat
  curvatureForm : Type u
  chernFormDefined : Prop
  integralityCondition : Prop
  topologicalInvariance : Prop

structure ChernClassesEvidence (C : ChernClassesPackage) where
  chernFormDefinedClosed : C.chernFormDefined
  integralityConditionClosed : C.integralityCondition
  topologicalInvarianceClosed : C.topologicalInvariance

def ChernClassesClosed (C : ChernClassesPackage) : Prop :=
  C.chernFormDefined ∧ C.integralityCondition ∧ C.topologicalInvariance

theorem chern_classes_closed_from_evidence (C : ChernClassesPackage)
    (E : ChernClassesEvidence C) : ChernClassesClosed C := by
  exact And.intro E.chernFormDefinedClosed
    (And.intro E.integralityConditionClosed E.topologicalInvarianceClosed)

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse