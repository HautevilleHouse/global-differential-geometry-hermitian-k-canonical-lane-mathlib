import GlobaDifferentialGeometryHermitianKCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GlobaDifferentialGeometryHermitianKCanonicalLaneLean

structure AdmissibleClass where
  object : HermitianKAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HermitianKWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GlobaDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse