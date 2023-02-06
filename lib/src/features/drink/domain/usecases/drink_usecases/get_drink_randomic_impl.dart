import 'package:thecocktaildb/src/features/drink/domain/entities/drink_entity.dart';
import 'package:thecocktaildb/src/features/drink/domain/infra/drink_repository.dart';

import './get_drink_randomic.dart';

class GetDrinkRandomicImpl implements GetDrinkRandomic {
  final DrinkRepository drinkRepository;

  GetDrinkRandomicImpl({
    required this.drinkRepository,
  });

  @override
  Future<List<DrinkEntity>> call() async {
    List<DrinkEntity> drinks = await drinkRepository.getDrinks();

    return drinks;
  }
}
