void main() {
  var obj = Student();
  obj.setData();
}

class Student implements InterFaceClass {
  @override
  getData() {
    print("GET DATA");
  }

  @override
  liveSearch() {
    print("LiveSearch");
  }

  @override
  setData() {
    print("SET DATA");
  }
}

class InterFaceClass {
  setData() {}

  getData() {}

  liveSearch() {}
}
