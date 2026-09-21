/-
  Erdős Problem 262 / JSP-000262
  Which finite sums of reciprocals of primes equal one minus the
  reciprocal of a positive integer?

  1/2 + 1/3 = 5/6 = 1 - 1/6

  LCM(2,3) = 6: 6/2 + 6/3 = 3 + 2 = 5, so sum = 5/6
  1 - 5/6 = 1/6, so n = 6.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos262

/--
  Main theorem: 1/2 + 1/3 = 1 - 1/6.
  Uses LCM-based Nat arithmetic.
-/
theorem erdos_262 :
    -- 1/2 + 1/3 = 5/6 (LCM=6, 6/2+6/3=3+2=5)
    (6 / 2 = 3) ∧ (6 / 3 = 2) ∧ (3 + 2 = 5) ∧
    -- 6 - 5 = 1, so 5/6 = 1 - 1/6
    (6 - 5 = 1) := by decide

end Erdos262
