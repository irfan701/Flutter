void main() {
  print("START");

  int result = int.parse('40');
  print(result);

  print("END");

//Format Exception

  print("START_START");

  try {
    int result2 = int.parse('4G');
    print(result2);
  } catch (e) {
    print(e);
  }

  print("END_END");

  //Integer Division By Zero

  print("START ZERO");

  try {
    int result2 = 10 ~/ 0;
    print(result2);
  } catch (e) {
    print(e);
  }

  print("END ZERO");

  print("START ZERO ONE");

  try {
    int result2 = 10 ~/ 0;
    print(result2);
  } on IntegerDivisionByZeroException {
    print("Can't Divide By Zero");
  } catch (e) {
    print(e);
  } finally {
    print("HowEver, You will execute always !");
  }

  print("END ZERO ONE");
}
