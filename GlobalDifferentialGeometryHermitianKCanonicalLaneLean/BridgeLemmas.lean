import GlobalDifferentialGeometryHermitianKCanonicalLaneLean.HermitianKAdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HermitianKWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
