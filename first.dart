void main() {
  var arrFib = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34];
  print("1. Опишіть масив fibArray з десяти перших чисел Фібонначі $arrFib");

  final rev = arrFib.reversed;
  print("2. Створіть масив revArray, елементи якого знаходяться в оберненому порядку відносно масиву fibArray $rev");

  var arr1 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];
  print("3. Опишіть масив простих чисел snglArray, які не перевищують число 100 $arr1");
  print("4. Виведіть на екран кількість елементів масиву snglArray ${arr1.length}");
  print("5. Виведіть на екран 10-й елемент масив snglArray ${arr1[10]}");
  print("6. Виведіть на екран підмасив елементів масиву snglArray, починаючи з 15-го та закінчуючи 20-м елементами ${arr1.sublist(14, 20)}");

  var arr2 = List.filled(10, arr1[9]);
  print("7. Створіть масив rptArray з 10 елементів, що рівні 10-му елементу масиву snglArray $arr2");

  var arr3 = [1, 3, 5, 7, 9];
  print("8. Опишіть масив непарних чисел oddArray (не менших за число 0, та не більших за число 10), використовуючи init(arrayLiteral:) $arr3");

  arr3.add(11);
  print("9. Додайте до масиву oddArray число 11 $arr3");

  arr3.addAll([15, 17, 19]);
  print("10. Додайте до масиву oddArray числа 15, 17, 19 у якості підмасиву $arr3");

  int index = arr3.indexOf(11);
  if (index != -1) {
    arr3.insert(index + 1, 13);
  }
  print("11. Вставте у масив oddArray число 13 на позицію між числами 11 та 15 $arr3");

  arr3.removeRange(5, 8);
  print("12. Видаліть елементи масиву oddArray, починаючи з 5-го та закінчуючи 8-им (невключно) елементами $arr3");

  var lastArr3 = arr3.length - 1;
  print("13. Видаліть останній елемент масиву oddArray та виведіть його на екран ${arr3[lastArr3]}");
  arr3.removeLast();

  arr3.replaceRange(2, lastArr3, [2, 3, 4]);
  print("14. Замініть елементи масиву oddArray, починаючи з 2-го та закінчуючи останнім, на масив з числовими елементами 2, 3, 4 $arr3");

  arr3.remove(3);
  print("15. Видаліть елемент масиву oddArray, який рівний числу 3 $arr3");
  print("16. Виведіть значення, яке визначає, чи міститься число 3 у масиві oddArray ${arr3.contains(3)}");

  var arr3String = arr3.toString();
  try {
    String string = arr3String as String;
    print("17. Виведіть на екран рядкове представлення масиву oddArray $string");
  } catch (e) {
    print("не то");
  }
}