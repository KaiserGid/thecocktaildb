class DrinkEntity {
  final String id;
  final String name;
  final String isAlchoolic;
  final String urlImage;

  DrinkEntity({
    required this.id,
    required this.name,
    required this.isAlchoolic,
    required this.urlImage,
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
