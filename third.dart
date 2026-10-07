void main() {
  Map nDict = {
    "1": "One",
    "2": "Two",
    "3": "Three",
    "4": "Four",
    "5": "Five",
  };
  print("1. Опишіть словник nDict, ключами якого є числові рядкові предсталення чисел від 1 до 5, а відповідними значеннями є рядкові представлення чисел від 1 до 5 на англійській мові (наприклад, 1:One) $nDict");

  var zavd2 = nDict["3"] ?? "";
  print("2. Виведіть на екран значення масиву nDict за ключем 3 $zavd2");

  var zavd3 = nDict["4"] ?? "";
  print("3. Виведіть на екран значення масиву nDict за індексом ключа 4 $zavd3");

  var mNDict = Map.from(nDict);
  print("4. Створіть mutable словник mNDict на основі словника nDict $mNDict");

  mNDict["6"] = "Seven";
  mNDict["7"] = "Six";
  print("5. Додайте елементи 6:Seven та 7:Six до словника mNDict $mNDict");

  mNDict.update("6", (v) => "Six");
  mNDict.update("7", (v) => "Seven");
  mNDict.putIfAbsent("8", () => "Eight");
  print("6. Оновіть значення елементів словника mNDict, не використовуючи subscript [], до наступних: 6:Six, 7:Seven, 8:Eight $mNDict");

  mNDict.remove("5");
  print("7. Видаліть елемент за ключем 5 зі словника mNDict $mNDict");

  mNDict.remove("4");
  print("8. Видаліть елемент за індексом ключа 4 зі словника mNDict $mNDict");

  int zavd9 = 0;
  var keysList = mNDict.keys.toList();
  int index1 = keysList.indexOf("1");
  int index7 = keysList.indexOf("7");
  if (index1 != -1 && index7 != -1) {
    zavd9 = (index7 - index1).abs();
  }
  print("9. Визначіть та виведіть на екран відстань у словнику mNDict між парами значень 1:One та 7:Seven $zavd9");

  var mNDictKeys = mNDict.keys.toList();
  print("10. Створіть масив mNDictKeys, елементами якого є усі ключі словника mNDict $mNDictKeys");

  var mNDictValues = mNDict.values.toList();
  print("11. Створіть масив mNDictKeys, елементами якого є усі значення словника mNDict $mNDictValues");

  var zavd12Length = mNDict.length;
  var zavd12KeysLength = mNDictKeys.length;
  var zavd12ValuesLength = mNDictValues.length;
  print("12. Виведіть на екран кількість елементів словника mNDict, а також кількість його всіх ключів та його всіх значень $zavd12Length, $zavd12KeysLength, $zavd12ValuesLength");

  var zavd13 = mNDict.toString();
  print("13. Виведіть на екран рядкове представлення словника mNDict $zavd13");
}