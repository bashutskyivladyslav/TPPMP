class Person {
  String name;
  Son? son;

  Person(this.name) {
    print('init: $name');
  }

  destr() {
    print('deinit: $name');
  }
}

class Son {
  String name;
  Person? parent;

  Son(this.name) {
    print('Son init: $name');
  }

  destr() {
    print('Son deinit: $name');
  }
}

void main() {

  {
    var p = Person("John");
  }

  {
    var father = Person("Bob");
    var son = Son("Kler ");

    father.son = son;
    son.parent = father;

    father.destr();
    son.destr();
  }
}