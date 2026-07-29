import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryHermitianKCanonicalLaneLean.KTheoreticIndex

namespace HautevilleHouse
namespace GlobalDifferentialGeometryHermitianKCanonicalLaneLean

def ConstrainedHermitianKClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hermitian_k_endgame (A : AdmissibleClass) :
    ConstrainedHermitianKClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GlobalDifferentialGeometryHermitianKCanonicalLaneLean
end HautevilleHouse
