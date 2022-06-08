void main() {
  FunctionOutter();

  addTwoNumbers() {
    print(10 + 20);
  }

//As a take parameter
  mainFunction(addTwoNumbers);
}

mainFunction(Function function) {
  function();
}

//Functional Programming/nested Function

FunctionOutter() {
  FunctionInner(x, y) {
    print(x + y);
  }

  FunctionInner(20, 30);
}
