import 'package:thecocktaildb/src/features/drink/domain/entities/drink_entity.dart';

import './get_drink_by_id_usecase.dart';
import '../../infra/drink_repository.dart';

class GetDrinkByIdUsecaseImpl implements GetDrinkByIdUsecase {
  final DrinkRepository drinkRepository;

  GetDrinkByIdUsecaseImpl({
    required this.drinkRepository,
  });

  @override
  Future<DrinkEntity> call(String idDrink) async {
    DrinkEntity drink = await drinkRepository.getDrinksById(drinkId: idDrink).then((drinks) => drinks.where((element) => element.id.contains(idDrink)).first);
    return drink;
  }
}
