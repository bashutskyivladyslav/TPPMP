import 'lab4.dart';

void runTests() {
  var calc = Calculator.instance;

  void check(String testName, bool condition) {
    print(condition ? '[PASS] $testName' : '[FAIL] $testName');
  }

  var r1 = Rational(1, 2);
  var r2 = Rational(1, 4);
  var r3 = Rational(2, 3);

  check('1/2 + 1/4 == 3/4',
      Calculator.plus(r1, r2).isEqual(Rational(3, 4)));
  check('1/2 - 1/4 == 1/4',
      Calculator.minus(r1, r2).isEqual(Rational(1, 4)));
  check('1/2 * 2/3 == 1/3',
      calc.multiply(r1, r3).isEqual(Rational(1, 3)));
  check('1/2 / 2/3 == 3/4',
      calc.divide(r1, r3).isEqual(Rational(3, 4)));

  check('6/8 == 3/4',
      Rational(6, 8).toString() == '3/4');
  check('2/-4 == -1/2',
      Rational(2, -4).toString() == '-1/2');

  var copyR1 = r1.copy();
  check('r1 == copy(r1)', r1.isEqual(copyR1));
  check('!identical(r1, copy(r1))', !identical(r1, copyR1));
  check('1/2 != 1/4', !r1.isEqual(r2));

  check('1/2 + 1/4 * 2/3 == 2/3',
      calc.evaluateText('1/2 + 1/4 * 2/3').isEqual(Rational(2, 3)));
  check('5/2 + 1/4 * 4/5 == 27/10',
      calc.evaluateText('5/2 + 1/4 * 4/5').isEqual(Rational(27, 10)));
  check('1 - 1/2 / 1/4 == -1',
      calc.evaluateText('1 - 1/2 / 1/4').isEqual(Rational(-1, 1)));

  check('5/2+1/4*4/5 == 27/10',
      calc.evaluateText('5/2+1/4*4/5').isEqual(Rational(27, 10)));
  check('  1/2 +1/3* 3/2  == 1',
      calc.evaluateText('  1/2 +1/3* 3/2 ').isEqual(Rational(1, 1)));

  check('identical(instance, instance)',
      identical(Calculator.instance, Calculator.instance));
}

void main() {
  runTests();
}