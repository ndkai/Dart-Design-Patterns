/*
Abstract factory pattern cung cấp cách thức để tóm lược lại các đối tượng mà không cần tạo ra một lớp cụ thể
 */

abstract class Vegetable{
  void cook(){
    print("eat vegetables is very healthy");
  }
}

class Pumpkin implements Vegetable{
  @override
  void cook() {
    print("Can make a good soup");
  }
}

class Cucumber implements Vegetable{
  @override
  void cook() {
    print("Can make a good salad");
  }
}

abstract class Recipe{
  Vegetable chooseIngredient();
}

class Salad implements Recipe{
  @override
  Vegetable chooseIngredient() {
    return Cucumber();
  }
}

class Soup implements Recipe{
  @override
  Vegetable chooseIngredient() {
    return Pumpkin();
  }
}

void main(){
  Recipe? recipe;
  var favorite = "soup";
  switch(favorite) {
    case "soup":
      recipe = Soup();
      break;
    case "salad":
      recipe = Salad();
      break;
  }
  var ingredient = recipe!.chooseIngredient();
  ingredient.cook();

}