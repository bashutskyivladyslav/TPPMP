void main() {
  Set chSet = {"a", "b", "c", "d", "f"};
  print("1. Опишіть множину chSet із символів а, b, c та d $chSet");

  Set mChSet = Set.from(chSet);
  print("2. Створіть mutable множину mChSet на основі множити chSet $mChSet");

  var len = mChSet.length;
  print("3. Виведіть на екран кількість елементів множини mChSet $len");

  mChSet.add("e");
  print("4. Вставте символ е в множину mChSet $mChSet");

  var srtChSet = mChSet.toList()..sort();
  print("5. Створіть множину srtChSet, яка є відсортованою версією множини mChSet $srtChSet");

  mChSet.remove("f");
  print("6. Видаліть з множини mChSet символ f та виведіть видалений символ на екран $mChSet");

  mChSet.remove("d");
  print("7. Видаліть символ d з множини mChSet за його індексом та виведіть рядкове представлення множини mChSet $mChSet");

  var list = mChSet.toList();
  var index = list.indexOf("a");
  if (index != -1) {
    print("8. Виведіть відстань у множині mChSet між першим елементом та символом а $index");
  }

  mChSet.add("a");
  print("9. Вставте символ а в множину mChSet $mChSet");

  Set aSet = {"One", "Two", "Three", 1, 2};
  Set bSet = {1, 2, 3, "One", "Two"};
  print("10. Опишіть множини aSet (зі значеннями One, Two, Three, 1, 2) та bSet (зі значеннями 1, 2, 3, One, Two) aSet: $aSet, bSet: $bSet");

  Set collective = aSet.intersection(bSet);
  print("11. Створіть множину, яка містить всі спільні елементи для множин aSet та bSet $collective");

  Set uniqueAset = aSet.difference(bSet);
  Set uniqueBset = bSet.difference(aSet);
  print("12. Створіть множину, яка містить унікальні елементи у множині aSet по відношенню до множини bSet. Створіть множину, яка містить унікальні елементи у множині bSet по відношенню до множини aSet uniqueAset: $uniqueAset, uniqueBset: $uniqueBset");

  Set zavd13 = aSet.difference(bSet).union(bSet.difference(aSet));
  print("13. Створіть множину, яка містить елементи, які не є спільними для множин aSet та bSet $zavd13");

  Set union = aSet.union(bSet);
  print("14. Створіть множину, яка об'єднує усі елементи множин aSet та bSet $union");

  Set xSet = {2, 3, 4};
  Set ySet = {1, 2, 3, 4, 5, 6};
  Set zSet = {3, 4, 2};
  Set x1Set = {5, 6, 7};
  print("15. Опишіть множини xSet (зі значеннями 2...4), ySet (зі значеннями 1...6), zSet (зі значеннями 3, 4, 2) та x1Set (зі значеннями 5, 6, 7) $xSet $ySet $zSet, $x1Set");

  var zavd161 = xSet.every((i) => ySet.contains(i));
  var zavd162 = ySet.every((i) => xSet.contains(i));
  print("16. Виведіть значення, які визначають чи множина xSet входить у множину ySet, а також чи множина ySet входить у множину xSet $zavd161 $zavd162");

  var zavd171 = ySet.every((i) => xSet.contains(i));
  var zavd172 = xSet.every((i) => ySet.contains(i));
  print("17. Виведіть значення, які визначають чи множина xSet містить множину ySet, а також чи множина ySet містить множину xSet $zavd171 $zavd172");

  var zavd18 = xSet.containsAll(zSet) && zSet.containsAll(xSet) && xSet.length == zSet.length;
  print("18. Виведіть значеня, яке визначає чи множини xSet та zSet є рівними $zavd18");

  var zavd19 = xSet.every((i) => zSet.contains(i)) && xSet.length < zSet.length;
  print("19. Виведіть значення, яке визначає чи множина xSet входить у множину zSet, але не є рівною множині zSet $zavd19");

  var zavd20 = zSet.every((i) => xSet.contains(i)) && xSet.length > zSet.length;
  print("20. Виведіть значення, яке визначає чи множина xSet містить множину zSet, але не є рівною множині zSet $zavd20");
}