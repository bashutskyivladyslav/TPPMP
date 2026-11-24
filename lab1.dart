import 'dart:typed_data';

void task1() {
  print('Hello, World');
}

void task2() {
  int val1 = Uint8List.fromList([12])[0];
  int val2 = Int8List.fromList([-100])[0];
  int val3 = 0x80;
  int val4 = -32768;
  int val5 = 9223372036854775807;
  double val6 = Float32List.fromList([10235.34])[0];
  String val7 = 'a';
  String val8 = 'Hello World';
  bool val9 = true;
  (int, String) val10 = (12, 'twelve');

  print('$val1, $val2, $val3, $val4, $val5, $val6, $val7, $val8, $val9, $val10');
}

void task3() {
  String str = 'Hello World';

  print(str.length);

  str = str.replaceAll('i', 'u');

  List<String> chars = str.split('');
  chars.removeAt(9);
  chars.removeAt(6);
  chars.removeAt(3);
  str = chars.join('');

  str += ' (modified)';

  print(str.isEmpty);

  str += '.';

  print(str.startsWith('Hello'));

  print(str.endsWith('world.'));

  str = '${str.substring(0, 10)}-${str.substring(10)}';

  str = str.replaceAll('Thus us', 'It is');

  print('${str[9]}, ${str[14]}');

  print(str.substring(9, 14));
}

void task4() {
  int? integerNumber;
  double? decimalNumber;

  integerNumber = 10;

  integerNumber += integerNumber;

  integerNumber = -integerNumber;

  decimalNumber = integerNumber.toDouble();

  (int?, double?) pairOfValues = (integerNumber, decimalNumber);

  if (pairOfValues.$1 != null) {
    print(pairOfValues.$1);
  }

  if (pairOfValues.$2 != null) {
    print(pairOfValues.$2);
  }

  if (decimalNumber != null) {
    final unwrappedDecimal = decimalNumber;
    print(unwrappedDecimal);
  }
}

void main() {
  task1();
  task2();
  task3();
  task4();
}