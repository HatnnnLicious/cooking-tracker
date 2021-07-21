import './ingredient.dart';
import './fileIO.dart';

class Recipe {
  List<Ingredient> ingredientsList;
  String name = 'New Recipe';
  double totalCost = 0.0;
  // List <Step> stepsList;
  // TODO: implement steps and LOGIC

  Recipe({
    required this.ingredientsList,
    required this.name,
  });

  void costCalculation(List<Ingredient> ingredientsList){
    ingredientsList.forEach((Ingredient ingredient) {
      totalCost += ingredient.cost;
    });
  }


}