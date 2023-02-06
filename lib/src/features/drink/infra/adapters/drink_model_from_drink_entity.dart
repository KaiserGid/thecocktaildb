import 'package:thecocktaildb/src/features/drink/domain/entities/drink_entity.dart';
import 'package:thecocktaildb/src/features/drink/infra/models/drink_model.dart';

class DrinkAdapter {
  static DrinkEntity toEntity(DrinkModel model) {
    return DrinkEntity(
      id: model.idDrink,
      name: model.strDrink,
      isAlchoolic: model.strAlcoholic,
      urlImage: model.strDrinkThumb,
    );
  }
}
