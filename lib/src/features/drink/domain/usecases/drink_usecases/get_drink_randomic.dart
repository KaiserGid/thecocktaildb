import 'package:thecocktaildb/src/features/drink/domain/entities/drink_entity.dart';

abstract class GetDrinkRandomic {
  Future<List<DrinkEntity>> call();
}
