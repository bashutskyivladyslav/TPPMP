class Rational {
  int num;
  int den;

  Rational(this.num, this.den) {
    if (den == 0) {
      throw ArgumentError('ERROR /0');
    }
    _simplify();
  }

  static Rational fromString(String s) {
    s = s.trim();
    if (s.contains('/')) {
      var p = s.split('/');
      return Rational(int.parse(p[0]), int.parse(p[1]));
    }
    return Rational(int.parse(s), 1);
  }

  Rational copy() {
    return Rational(num, den);
  }

  bool isEqual(Rational other) {
    return num * other.den == other.num * den;
  }

  Rational add(Rational other) {
    return Rational(
      num * other.den + other.num * den,
      den * other.den,
    );
  }

  Rational sub(Rational other) {
    return Rational(
      num * other.den - other.num * den,
      den * other.den,
    );
  }

  Rational mul(Rational other) {
    return Rational(
      num * other.num,
      den * other.den,
    );
  }

  Rational div(Rational other) {
    return Rational(
      num * other.den,
      den * other.num,
    );
  }

  void _simplify() {
    if (den < 0) {
      num = -num;
      den = -den;
    }
    int a = num.abs();
    int b = den.abs();
    while (b != 0) {
      int t = b;
      b = a % b;
      a = t;
    }
    if (a > 1) {
      num ~/= a;
      den ~/= a;
    }
  }

  @override
  String toString() {
    return den == 1 ? '$num' : '$num/$den';
  }
}

class Calculator {
  static final Calculator instance = Calculator.internal();
  Calculator.internal();

  Rational? left;
  Rational? right;

  static Rational plus(Rational a, Rational b) => a.add(b);
  static Rational minus(Rational a, Rational b) => a.sub(b);
  Rational multiply(Rational a, Rational b) => a.mul(b);
  Rational divide(Rational a, Rational b) => a.div(b);

  Rational evaluateText(String expr) {
    List<Rational> nums = [];
    List<String> ops = [];
    String cur = '';

    for (int i = 0; i < expr.length; i++) {
      String ch = expr[i];

      if (ch == ' ' || ch == '\t') {
        continue;
      }

      bool isOp = ch == '+' || ch == '-' || ch == '*' || (ch == '/' && cur.contains('/'));

      if (isOp && cur.isNotEmpty && !cur.endsWith('/')) {
        nums.add(Rational.fromString(cur));
        ops.add(ch);
        cur = '';
      } else {
        cur += ch;
      }
    }

    if (cur.isNotEmpty) {
      nums.add(Rational.fromString(cur));
    }

    return evaluate(nums, ops);
  }

  Rational evaluate(List<Rational> nums, List<String> ops) {
    List<Rational> nList = [for (var x in nums) x.copy()];
    List<String> oList = List.from(ops);

    int i = 0;
    while (i < oList.length) {
      if (oList[i] == '*' || oList[i] == '/') {
        left = nList[i];
        right = nList[i + 1];
        Rational res = oList[i] == '*' ? multiply(left!, right!) : divide(left!, right!);
        nList[i] = res;
        nList.removeAt(i + 1);
        oList.removeAt(i);
      } else {
        i++;
      }
    }

    Rational acc = nList[0];
    for (int j = 0; j < oList.length; j++) {
      if (oList[j] == '+') {
        acc = plus(acc, nList[j + 1]);
      } else if (oList[j] == '-') {
        acc = minus(acc, nList[j + 1]);
      }
    }

    return acc;
  }
}

void main() {
  var calc = Calculator.instance;

  const list = [
    '5/2 + 1/4 * 4/5',
  ];

  for (final a in list) {
    print('$a');
    print('${calc.evaluateText(a)}');
  }
}