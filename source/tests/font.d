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

unittest
{
  Spec spec = new Spec(__MODULE__, __FILE__);

  spec.test((describe) {
    describe("Test console colors", (it) {
      it("shold colorize all colors.", {
        string c = "▓";

        log!(color.white)(c);
        log!(color.cyan)(c);
        log!(color.purple)(c);
        log!(color.blue)(c);
        log!(color.green)(c);
        log!(color.red)(c);
        log!(color.gray)(c);
        log!(color.black)(c);
        logln!(defaultColor)(c);
      });

      it("shold set all styles.", {
        string c = "F";

        log!(defaultStyle)(c);
        log!(style.plain)(c);
        logln!(style.bold)(c);
      });
    });
  });
}
