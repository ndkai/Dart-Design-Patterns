abstract class Animal{
  void bite();
}

class Cat implements Animal{
  @override
  void bite() {
    print("cat bite is a little hurt");
  }
}

class Dog implements Animal{
  @override
  void bite() {
    print("Dog bite is supper hurt");
  }

}

enum AnimalType{
 dog,cat
}

class AnimalFactory{
  static Animal spawnAnimal(AnimalType animalType){
    switch(animalType) {
      case AnimalType.cat:
        return Cat();
      case AnimalType.dog:
        return Dog();
    }


  }
}

void main(){
  Animal animal= AnimalFactory.spawnAnimal(AnimalType.cat);
  animal.bite();
}