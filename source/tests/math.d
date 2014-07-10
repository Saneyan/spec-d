/**
 * spec-d
 *
 * Authors:   Saneyuki Tadokoro <saneyan@mail.gfunction.com>
 * Copyright: (c) 2014, Saneyuki Tadokoro
 */
module tests.math;

import std.stdio;
import std.numeric;
import spec;

class Sieve
{
  private static pure nothrow int calc(int i, int t)
  {
    return i * i + t * i;
  }

  public static pure nothrow int[] getPrimeNumbers(int max)
  {
    int i, j, t;
    int remain = max - 2;
    bool[] omits = new bool[max];
    float square = secantMethod!(x => x * x - max)(0, max);

    for (i = 2; i < square; i++) {
      for (t = 0, j = calc(i, t); j < max; j = calc(i, ++t)) {
        if (omits[j] == true) continue;
        omits[j] = true;
        remain--;
      }
    }

    int[] numbers = new int[remain];

    for (i = 2, j = 0; i < max; i++)
      if (omits[i] == false) numbers[j++] = i;

    return numbers;
  }
}

unittest
{
  Spec spec = new Spec(__MODULE__, __FILE__);

  spec.test((describe) {
    describe("Simple computing", (it) {
      it("should 109412 + 403942 = 513354", {
        assert(109412 + 403942 == 513354);
      });
    });

    describe("Sieve of Eratosthenes", (it) {
      it("should find all prime numbers up to 200", {
        int[] result = Sieve.getPrimeNumbers(200);

        assert(result == [
          2, 3, 5, 7, 11, 13,
          17, 19, 23, 29, 31, 37, 41, 43,
          47, 53, 59, 61, 67, 71, 73, 79,
          83, 89, 97, 101, 103, 107, 109, 113,
          127, 131, 137, 139, 149, 151, 157, 163,
          167, 173, 179, 181, 191, 193, 197, 199]);
      });
    });
  });
}
