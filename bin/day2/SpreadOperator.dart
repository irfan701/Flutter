void main() {
  List a = [1, 2, 3, 4, 5];
  List b = [...a, "UAE"];

  print(b);

  int x = 30;
  x = 40;
  print(x);

  int y = 70;
  final z = y;
  print(z);

  // int vv = 90;
  // const cc = vv;  //not possible to keep variable
  // print(cc);
}

/*
output

[1, 2, 3, 4, 5, UAE]

*/
