
abstract class Dish{
  String getIngredient();
}

class FriedRice extends Dish{
  @override
  String getIngredient() {
    return "Cooked Rice";
  }
}

class FriedRiceDecorator extends Dish{
  FriedRice _rice;
   @override
  String getIngredient() {
    return 
  }
}

class EggFriedRice extends FriedRice{
  
}