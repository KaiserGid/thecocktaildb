import '../../entities/drink_entity.dart';

abstract class GetDrinkByAlchoolic {
  Future<List<DrinkEntity>> call(String type);
}
