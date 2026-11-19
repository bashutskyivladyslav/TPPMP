class Operand {
  int number;
  Operand? operand;
  Function? block;

  Operand(this.number) {
    print("init");
  }

  void Block() {

    block = () {
      print(number);
    };
  }

  dec() {
    print("deinit");
  }
}

void main() {
  
  Operand? op = Operand(10);
  op.Block();
  
  op.dec();
  op = null; 
}