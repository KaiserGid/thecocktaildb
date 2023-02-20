import 'package:thecocktaildb/src/features/drink/domain/entities/ingredients_entity.dart';

class DrinkEntity {
  final String id;
  final String name;
  final String isAlchoolic;
  final String urlImage;
  final String glass;
  final String instruction;
  final List<IngredientEntity> ingredients;

  DrinkEntity({
    required this.id,
    required this.name,
    required this.isAlchoolic,
    required this.urlImage,
    required this.glass,
    required this.instruction,
    required this.ingredients,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DrinkEntity && other.id == id && other.name == name && other.isAlchoolic == isAlchoolic && other.urlImage == urlImage;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ isAlchoolic.hashCode ^ urlImage.hashCode;
  }
}
