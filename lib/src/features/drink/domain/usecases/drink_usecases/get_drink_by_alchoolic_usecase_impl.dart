import 'package:thecocktaildb/src/features/drink/domain/entities/drink_entity.dart';
import 'package:thecocktaildb/src/features/drink/domain/infra/drink_repository.dart';

import 'get_drink_by_alchoolic_usecase.dart';

class GetDrinkByAlchoolicImpl implements GetDrinkByAlchoolic {
  DrinkRepository drinkRepository;

  GetDrinkByAlchoolicImpl({
    required this.drinkRepository,
  });
  @override
  Future<List<DrinkEntity>> call(String type) async {
    List<DrinkEntity> drinks = await drinkRepository.getDrinksByType(drinkType: type);

    return drinks;
  }
}
