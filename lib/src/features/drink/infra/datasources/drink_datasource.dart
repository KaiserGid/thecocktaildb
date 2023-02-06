import 'package:thecocktaildb/src/features/drink/infra/models/drink_model.dart';

abstract class DrinkDatasource {
  Future<List<DrinkModel>> fethDrinkRandon();
  Future<List<DrinkModel>> fecthDrinkById({required String drinkId});
  Future<List<DrinkModel>> fecthDrinkByType({required String type});
}
