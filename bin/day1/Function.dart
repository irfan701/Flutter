void main() {

  //Normal Function 
  myFunction() {
    print("Hello ");
    print("World");
  }

  myFunction();
  print("<br>");
//Arrow Function Have one statement
  myArrowFunction() => print("Hello World");
  myArrowFunction();


  sum() {
    print(20 + 30);
  }
  sum();

//Parametrized function
  add(int x, int y) {

    print(x+y);
  }

  add(10, 20);

//Parametrized with return 
  addtwo(int x,int y){
    return x+y;
  }
  print(addtwo(30, 10));
}
