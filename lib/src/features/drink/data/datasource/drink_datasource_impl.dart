import 'package:dio/dio.dart';
import 'package:thecocktaildb/src/features/drink/infra/models/drink_model.dart';
import 'package:thecocktaildb/src/shared/api/endpoints.dart';

import '../../infra/datasources/drink_datasource.dart';

class DioDrinkDatasourceImpl implements DrinkDatasource {
  final Dio clientHttp = Dio();

  @override
  Future<List<DrinkModel>> fethDrinkRandon() async {
    var result = await clientHttp.get(EndPoints.filterIsAlcoholic(type: 'Alcoholic'));
    List mapDrinks = result.data['drinks'];
    List<DrinkModel> drinkModels = mapDrinks.map((e) => DrinkModel.fromMap(e)).toList();
    return drinkModels;
  }

  @override
  Future<List<DrinkModel>> fecthDrinkById({required String drinkId}) async {
    var result = await clientHttp.get(EndPoints.lookupFullCocktailDetailsById(id: drinkId));
    List mapDrinks = result.data['drinks'];
    List<DrinkModel> drinkModels = mapDrinks.map((e) => DrinkModel.fromMap(e)).toList();
    return drinkModels;
  }

  @override
  Future<List<DrinkModel>> fecthDrinkByType({required String type}) async {
    var result = await clientHttp.get(EndPoints.filterIsAlcoholic(type: type));
    List mapDrinks = result.data['drinks'];
    List<DrinkModel> drinkModels = mapDrinks.map((e) => DrinkModel.fromMap(e)).toList();
    return drinkModels;
  }
}
