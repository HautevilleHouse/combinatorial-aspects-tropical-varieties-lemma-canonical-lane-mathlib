import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean

/-!
# Tropical Varieties Combinatorial Structures

This module defines the combinatorial structures underlying tropical varieties:
tropical semiring, tropical polynomials, and tropical hypersurfaces.
-/

structure TropicalSemiring where
  carrier : Type u
  plus : carrier → carrier → carrier
  times : carrier → carrier → carrier
  plus_comm : ∀ a b, plus a b = plus b a
  plus_assoc : ∀ a b c, plus a (plus b c) = plus (plus a b) c
  times_comm : ∀ a b, times a b = times b a
  times_assoc : ∀ a b c, times a (times b c) = times (times a b) c
  times_left_distrib : ∀ a b c, times a (plus b c) = plus (times a b) (times a c)
  zero : carrier
  zero_add : ∀ a, plus zero a = a
  add_zero : ∀ a, plus a zero = a
  one : carrier
  one_mul : ∀ a, times one a = a
  mul_one : ∀ a, times a one = a

structure TropicalPolynomial (R : TropicalSemiring) where
  vars : List String
  terms : List (R.carrier × List (String × ℕ))  -- coefficient and monomial: variable exponent pairs
  evaluate : R.carrier → (String → R.carrier) → R.carrier
  eqn : Prop

structure TropicalHypersurface where
  polynomial : TropicalPolynomial TropicalSemiring
  vanishingSet : Set (String → TropicalSemiring.carrier)
  isTropicalVariety : Prop

def TropicalHypersurfaceClosed (H : TropicalHypersurface) : Prop :=
  H.isTropicalVariety

end CombinatorialAspectsTropicalVarietiesLemmaCanonicalLaneLean
end HautevilleHouse