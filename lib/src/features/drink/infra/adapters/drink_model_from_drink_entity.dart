import 'package:thecocktaildb/src/features/drink/domain/entities/drink_entity.dart';
import 'package:thecocktaildb/src/features/drink/infra/models/drink_model.dart';

import '../../domain/entities/ingredients_entity.dart';

class DrinkAdapter {
  static DrinkEntity toEntity(DrinkModel model) {
    return DrinkEntity(
      id: model.idDrink,
      name: model.strDrink,
      isAlchoolic: model.strAlcoholic,
      urlImage: model.strDrinkThumb,
      glass: model.strGlass,
      instruction: model.strInstructions,
      ingredients: getIngredients(model),
    );
  }
}

List<IngredientEntity> getIngredients(DrinkModel drinkModel) {
  List<IngredientEntity> ingredientsEntitys = [];

  var drinkMap = drinkModel.toMap();
  var ingredients = drinkMap.entries.where((element) => element.key.contains('Ingredient') && element.value.isNotEmpty).map((e) => e.value).toList();
  var measure = drinkMap.entries.where((element) => element.key.contains('strMeasure') && element.value.isNotEmpty).map((e) => e.value).toList();

  for (var i = 0; i < ingredients.length; i++) {
    ingredientsEntitys.add(IngredientEntity(name: ingredients[i], measure: measure[i]));
  }

  return ingredientsEntitys;
}
