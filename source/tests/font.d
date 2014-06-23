/**
 * spec-d
 *
 * Authors:   Saneyuki Tadokoro <saneyan@mail.gfunction.com>
 * Copyright: (c) 2014, Saneyuki Tadokoro
 */
module tests.font;

import spec;
import console.stdio;
import console.font;

static this()
{
  Spec spec = new Spec(__MODULE__, __FILE__);

  spec.test((describe) {
    describe("Test console colors", (it) {
      it("shold colorize all colors.", {
        logln!(defaultColor)("default");
        logln!(color.black)("black");
        logln!(color.blue)("blue");
        logln!(color.green)("green");
        logln!(color.red)("red");
      });

      it("shold set all styles.", {
        logln!(defaultStyle)("default");
        logln!(style.plain)("plain");
        logln!(style.bold)("bold");
      });
    });
  });
}
