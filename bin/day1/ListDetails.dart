void main(){

List<dynamic> myList=["A","B","C","D"];
print(myList);
myList.add("E");
print(myList);

myList.addAll(["F","G",2]);
print(myList);

myList.insert(0, "Bangladesh");
print(myList);

myList.insertAll(1,["Japan","china"]);
print(myList);

myList.replaceRange(0, 3, ["Kolkata","Mumbai","xx","bb","dd"]);
print(myList);
}


/*

[A, B, C, D]
[A, B, C, D, E]
[A, B, C, D, E, F, G, 2]
[Bangladesh, A, B, C, D, E, F, G, 2]
[Bangladesh, Japan, china, A, B, C, D, E, F, G, 2]
[Kolkata, Mumbai, xx, bb, dd, A, B, C, D, E, F, G, 2]

*/