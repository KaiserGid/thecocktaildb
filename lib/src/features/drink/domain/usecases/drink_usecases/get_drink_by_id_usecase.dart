import 'package:thecocktaildb/src/features/drink/domain/entities/drink_entity.dart';

abstract class GetDrinkByIdUsecase {
  Future<DrinkEntity> call(String idDrink);
}
