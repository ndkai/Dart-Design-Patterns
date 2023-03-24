//defination: That use to separate the constructor of the complex obj from is presentation
// advanced: 1. Flexibility: The Builder pattern provides a flexible way to create complex objects
//
//           2. Encapsulation: The construction process is encapsulated within the Builder, making it easier to change the implementation
//
//           3. Separation of Concerns: The Builder pattern separates the construction of the product from its representation
//
//           4.  Reusable and test
//disadvanced:  Increased Complexity, Performance Overhead, Increased Development Time

class House {
  late String livingRoom;
  late String kitchen;
  late String bathroom;

  House();
}

abstract class HouseBuilder {
  void buildLivingRoom({String room = "LivingRoom"});

  void buildKitchen({String room = "Kitchen"});

  void buildBathroom({String room = "BathRoom"});

  House getHouse();
}

class ConcreteHouseBuilder implements HouseBuilder {
  late House _house;

  ConcreteHouseBuilder(){
    _house = House();
  }
  @override
  void buildBathroom({String room = "BathRoom"}) {
    _house.bathroom = room;
  }

  @override
  void buildKitchen({String room = "Kitchen"}) {
    _house.kitchen = room;
  }

  @override
  void buildLivingRoom({String room = "LivingRoom"}) {
    _house.livingRoom = room;
  }

  @override
  String toString() {
    return _house.bathroom + _house.livingRoom + _house.kitchen;
  }

  @override
  House getHouse() {
    return _house;
  }


}


void main() {
  ConcreteHouseBuilder concreteHouseBuilder = ConcreteHouseBuilder()
    ..buildBathroom()
    ..buildKitchen()
    ..buildLivingRoom()
    ..getHouse();
  print(concreteHouseBuilder.toString());
}