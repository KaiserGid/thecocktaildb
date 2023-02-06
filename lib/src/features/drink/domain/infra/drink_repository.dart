import '../entities/drink_entity.dart';

abstract class DrinkRepository {
  Future<List<DrinkEntity>> getDrinks();
  Future<List<DrinkEntity>> getDrinksById({required String drinkId});
  Future<List<DrinkEntity>> getDrinksByType({required String drinkType});
}
