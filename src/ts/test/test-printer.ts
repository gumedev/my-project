import assert = require('assert');
import Printer = require('../main/printer');

describe(' # Printer ', () => {
  context(' ## context ', () => {
    let str = 'hello world';
    let decoration = '+';

    let printer = new Printer(str, decoration);

    it(' ### getDistDecoration() ', () => {
      const expected = '+++++++++++';
      assert.ok(printer.getDistDecoration() === expected);
    });
    it(' ### print() ', () => {
      printer.print();
    });
  });
});
