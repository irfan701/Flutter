//class ,inheritance,overriding

void main() {
  var obj = new Home();
  obj.men;
  obj.women;
  obj.BedRoom();
  obj.Kitchen();
  obj.Garden();
  obj.SwimmingPoll();
  obj.EmiratesTower();
}

class Home extends FatherHome {
  int men = 4;
  int women = 3;

  BedRoom() {}

  Kitchen() {}

  @override
  EmiratesTower() {
    print("My Father was 2 Towers.Now I have added extra 3 towers.Total is 5");
  }
}

class FatherHome {
  Garden() {}

  SwimmingPoll() {}

  EmiratesTower() {
    print("I have 2 Towers");
  }
}
