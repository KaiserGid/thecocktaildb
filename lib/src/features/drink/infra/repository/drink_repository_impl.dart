import 'package:thecocktaildb/src/features/drink/domain/entities/drink_entity.dart';
import 'package:thecocktaildb/src/features/drink/infra/adapters/drink_model_from_drink_entity.dart';
import 'package:thecocktaildb/src/features/drink/infra/datasources/drink_datasource.dart';

import '../../domain/infra/drink_repository.dart';

class DrinkRepositoryImpl implements DrinkRepository {
  final DrinkDatasource drinkDataSource;

  DrinkRepositoryImpl({
    required this.drinkDataSource,
  });

  @override
  Future<List<DrinkEntity>> getDrinks() async {
    List<DrinkEntity> drinks = await drinkDataSource.fethDrinkRandon().then(
          (drinks) => drinks.map((drinkModel) => DrinkAdapter.toEntity(drinkModel)).toList(),
        );
    return drinks;
  }

  @override
  Future<List<DrinkEntity>> getDrinksById({required String drinkId}) async {
    List<DrinkEntity> drinks = await drinkDataSource.fecthDrinkById(drinkId: drinkId).then(
          (drinks) => drinks.map((drinkModel) => DrinkAdapter.toEntity(drinkModel)).toList(),
        );
    return drinks;
  }

  @override
  Future<List<DrinkEntity>> getDrinksByType({required String drinkType}) async {
    List<DrinkEntity> drinks = await drinkDataSource.fecthDrinkByType(type: drinkType).then(
          (drinks) => drinks.map((drinkModel) => DrinkAdapter.toEntity(drinkModel)).toList(),
        );
    return drinks;
  }
}
