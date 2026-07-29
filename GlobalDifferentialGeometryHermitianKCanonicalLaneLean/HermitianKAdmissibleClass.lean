import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

structure HermitianKObject where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : Prop
  hermitianMetric : Prop
  kCurvatureForm : Prop

structure HermitianKAdmittedObject where
  space : HermitianKObject
  compactKaehler : Prop
  chernClassDefined : Prop
  indexSatisfied : Prop
  conclusion : indexSatisfied

structure AdmissibleClass where
  object : HermitianKAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HermitianKWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def HermitianKWitnessClosed (O : HermitianKAdmittedObject) : Prop :=
  O.indexSatisfied

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
