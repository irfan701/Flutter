void main(){

//data type

int x=10;
double y=20;
String place="I love chittagong distric - Zone 141";
bool name=true || false;
List<dynamic> myList=[10,20,40,50,50,"irfan"]; //indexed array
Set mySet={'one','two','three','four','four'}; //don't take duplicate value 

Map<String,dynamic> myMap={
  "name":"irfan",
  "age":30,
  "country":"Bangladesh"
};

var myJson=[
  {
  "name":"irfan",
  "age":30,
  "country":"Bangladesh"
},
  {
  "name":"Hossain",
  "age":20,
  "country":"Dubai"
}
];

print(myMap);

var xyz="Hello world";
print(xyz.runtimeType);

//type test operator
int age=20;
var result=age is String; //age==result(data type not same)
print(result); //false


//Ternary OPerator


bool valueX=true;
print(valueX==true?"true":"false"); //true

int? AgeIsNull;
var r=AgeIsNull?? "empty";
print(r);

//Decision Making /Conditionl Statement










}