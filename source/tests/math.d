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
      it("should 109412 + 403942 = 513354", {
        //assert(109412 + 403942 == 513353);
        assert(109412 + 403942 == 513354);
      });
    });
  });
}
