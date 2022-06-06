void main(){


var area=Area.Chittagong;

switch (area) {
  case Area.AbuDhabi:
    print("AbuDhabi");  
  break;
  case Area.Chittagong:
  print("Chittagong");
  break;
  
  default:
  print("Not Matched");
}
    
}

enum Area {Chittagong,Dhaka,Dubai,AbuDhabi}