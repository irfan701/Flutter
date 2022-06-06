/*

void main(List<String> args) {

 for(int i=0;i<=10;i+=2){
   print(i);
 }

}

output :
0
2
4
6
8
10
*/

/*
 void main(List<String> args) {
  
var myList=[1,2,3,4,5,7,7];

for(int i in myList){
  print(i);
}

}

output :
2
3
4
5
7
7

*/


void main(List<String> args) {

List myMap=[
{
  "name":"irfan"

},
{
  "name":"farhan",
  "age":"20"
}
];

myMap.forEach((Element)=>{
    print(Element['name']),
    print(Element['age'])
});
}

// output :

// irfan
// null
// farhan
// 20
