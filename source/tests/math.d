/**
 * spec-d
 *
 * Authors:   Saneyuki Tadokoro <saneyan@mail.gfunction.com>
 * Copyright: (c) 2014, Saneyuki Tadokoro
 */
module tests.math;

import spec;

static this()
{
  Spec spec = new Spec(__MODULE__, __FILE__);

  spec.test((describe) {
    describe("Simple computing", (it) {
      it("should 2 + 2 = 4", {
        assert(2 + 2 == 4);
      });

      it("should 5 - 3 = 2", {
        assert(5 - 3 == 1);
      });
    });
  });
}
