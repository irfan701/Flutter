class MyDataModel {
  String name;
  String age;

  MyDataModel({required this.name, required this.age});
  Map toJson() => {"name": name, "age": age};
}
