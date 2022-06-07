void main() {
  //String Concatenation and Interpolation

  var a = "Dart";
  var b = "is";
  var c = "easiest";
  var d = "prograaming";
  var e = "language";

  print('$a $b $c $d $e'); //Dart is easiest prograaming language
  print(a + ' ' + b + ' ' + c + ' ' + d); //Dart is easiest prograaming

  List<String> ff = ["We", "Are", "Making", "List", "Of", "String"];
  print(ff.join(' ')); //We Are Making List Of String

  //seperate all the alphabets from a string

  String name = "Irf an";

  for (int i = 0; i < name.length; i++) {
    print(name[i]);
  }

  String name2 = "HelloWorld";
  print(name2.split(' '));

  /*
I
r
f
 
a
n
  */
}
