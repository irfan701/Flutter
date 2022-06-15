void main() {
  var obj = new Lock();
  print(obj.elevatorSpeed);
  print(Lock.onChange);
  Lock.goingDown();
  Lock.goingUp();

  //////////////////
  var obj2 = Info();
  obj2.myFun();
}

class Lock {
  String elevatorSpeed = '20';

  weight() {
    print("700KG");
  }

  static String onChange = 'I am Event';
  static goingUp() {
    print("Going UP");
  }

  static goingDown() {
    print("Going Down");
  }
}

class Info extends Lock {
  myFun() {
    print(this.elevatorSpeed);
    super.weight();
  }
}
