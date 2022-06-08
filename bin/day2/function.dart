//positional parameter

void main() {
  myFunction(10, 30, 40);
  myFunctionTwo(10, 20);
  myFunctionThree(22, b: 33, c: 77);
}

myFunction(a, b, c) {
  print(a);
  print(b);
  print(c);
}

/*
output:
10
30
40
*/

//optional positional  parameter

myFunctionTwo(a, [b, c, d]) {
  print(a);
  print(b);
  print(c);
  print(d);
}
/*
10
20
null
null
*/

//int? =>null checker
//optional name parameter

myFunctionThree(a, {b, c, int? d}) {
  print(a);
  print(b);
  print(c);
  print(d);
}

/*
22
33
77
null
*/

//Higer Order Function =>either take parameter neither take return



