import 'dart:convert';

class IngredientModel {
  String name;
  int quantidade;
  IngredientModel({
    required this.name,
    required this.quantidade,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'quantidade': quantidade});

    return result;
  }

  factory IngredientModel.fromMap(Map<String, dynamic> map) {
    return IngredientModel(
      name: map['name'] ?? '',
      quantidade: map['quantidade'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory IngredientModel.fromJson(String source) => IngredientModel.fromMap(json.decode(source));
}
