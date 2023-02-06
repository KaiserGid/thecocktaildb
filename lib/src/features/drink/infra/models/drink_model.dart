import 'dart:convert';

class DrinkModel {
  String idDrink;
  String strDrink;
  String strDrinkAlternate;
  String strTags;
  String strVideo;
  String strCategory;
  String strIBA;
  String strAlcoholic;
  String strGlass;
  String strInstructions;
  String strInstructionsES;
  String strInstructionsDE;
  String strInstructionsFR;
  String strInstructionsIT;
  String strInstructionsZHHANS;
  String strInstructionsZHHANT;
  String strDrinkThumb;
  String strIngredient1;
  String strIngredient2;
  String strIngredient3;
  String strIngredient4;
  String strIngredient5;
  String strIngredient6;
  String strIngredient7;
  String strIngredient8;
  String strIngredient9;
  String strIngredient10;
  String strIngredient11;
  String strIngredient12;
  String strIngredient13;
  String strIngredient14;
  String strIngredient15;
  String strMeasure1;
  String strMeasure2;
  String strMeasure3;
  String strMeasure4;
  String strMeasure5;
  String strMeasure6;
  String strMeasure7;
  String strMeasure8;
  String strMeasure9;
  String strMeasure10;
  String strMeasure11;
  String strMeasure12;
  String strMeasure13;
  String strMeasure14;
  String strMeasure15;
  String strImageSource;
  String strImageAttribution;
  String strCreativeCommonsConfirmed;
  String dateModified;

  DrinkModel({
    required this.idDrink,
    required this.strDrink,
    required this.strDrinkAlternate,
    required this.strTags,
    required this.strVideo,
    required this.strCategory,
    required this.strIBA,
    required this.strAlcoholic,
    required this.strGlass,
    required this.strInstructions,
    required this.strInstructionsES,
    required this.strInstructionsDE,
    required this.strInstructionsFR,
    required this.strInstructionsIT,
    required this.strInstructionsZHHANS,
    required this.strInstructionsZHHANT,
    required this.strDrinkThumb,
    required this.strIngredient1,
    required this.strIngredient2,
    required this.strIngredient3,
    required this.strIngredient4,
    required this.strIngredient5,
    required this.strIngredient6,
    required this.strIngredient7,
    required this.strIngredient8,
    required this.strIngredient9,
    required this.strIngredient10,
    required this.strIngredient11,
    required this.strIngredient12,
    required this.strIngredient13,
    required this.strIngredient14,
    required this.strIngredient15,
    required this.strMeasure1,
    required this.strMeasure2,
    required this.strMeasure3,
    required this.strMeasure4,
    required this.strMeasure5,
    required this.strMeasure6,
    required this.strMeasure7,
    required this.strMeasure8,
    required this.strMeasure9,
    required this.strMeasure10,
    required this.strMeasure11,
    required this.strMeasure12,
    required this.strMeasure13,
    required this.strMeasure14,
    required this.strMeasure15,
    required this.strImageSource,
    required this.strImageAttribution,
    required this.strCreativeCommonsConfirmed,
    required this.dateModified,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'idDrink': idDrink});
    result.addAll({'strDrink': strDrink});
    result.addAll({'strDrinkAlternate': strDrinkAlternate});
    result.addAll({'strTags': strTags});
    result.addAll({'strVideo': strVideo});
    result.addAll({'strCategory': strCategory});
    result.addAll({'strIBA': strIBA});
    result.addAll({'strAlcoholic': strAlcoholic});
    result.addAll({'strGlass': strGlass});
    result.addAll({'strInstructions': strInstructions});
    result.addAll({'strInstructionsES': strInstructionsES});
    result.addAll({'strInstructionsDE': strInstructionsDE});
    result.addAll({'strInstructionsFR': strInstructionsFR});
    result.addAll({'strInstructionsIT': strInstructionsIT});
    result.addAll({'strInstructionsZH-HANS': strInstructionsZHHANS});
    result.addAll({'strInstructionsZH-HANT': strInstructionsZHHANT});
    result.addAll({'strDrinkThumb': strDrinkThumb});
    result.addAll({'strIngredient1': strIngredient1});
    result.addAll({'strIngredient2': strIngredient2});
    result.addAll({'strIngredient3': strIngredient3});
    result.addAll({'strIngredient4': strIngredient4});
    result.addAll({'strIngredient5': strIngredient5});
    result.addAll({'strIngredient6': strIngredient6});
    result.addAll({'strIngredient7': strIngredient7});
    result.addAll({'strIngredient8': strIngredient8});
    result.addAll({'strIngredient9': strIngredient9});
    result.addAll({'strIngredient10': strIngredient10});
    result.addAll({'strIngredient11': strIngredient11});
    result.addAll({'strIngredient12': strIngredient12});
    result.addAll({'strIngredient13': strIngredient13});
    result.addAll({'strIngredient14': strIngredient14});
    result.addAll({'strIngredient15': strIngredient15});
    result.addAll({'strMeasure1': strMeasure1});
    result.addAll({'strMeasure2': strMeasure2});
    result.addAll({'strMeasure3': strMeasure3});
    result.addAll({'strMeasure4': strMeasure4});
    result.addAll({'strMeasure5': strMeasure5});
    result.addAll({'strMeasure6': strMeasure6});
    result.addAll({'strMeasure7': strMeasure7});
    result.addAll({'strMeasure8': strMeasure8});
    result.addAll({'strMeasure9': strMeasure9});
    result.addAll({'strMeasure10': strMeasure10});
    result.addAll({'strMeasure11': strMeasure11});
    result.addAll({'strMeasure12': strMeasure12});
    result.addAll({'strMeasure13': strMeasure13});
    result.addAll({'strMeasure14': strMeasure14});
    result.addAll({'strMeasure15': strMeasure15});
    result.addAll({'strImageSource': strImageSource});
    result.addAll({'strImageAttribution': strImageAttribution});
    result.addAll({'strCreativeCommonsConfirmed': strCreativeCommonsConfirmed});
    result.addAll({'dateModified': dateModified});

    return result;
  }

  factory DrinkModel.fromMap(Map<String, dynamic> map) {
    return DrinkModel(
      idDrink: map['idDrink'] ?? '',
      strDrink: map['strDrink'] ?? '',
      strDrinkAlternate: map['strDrinkAlternate'] ?? '',
      strTags: map['strTags'] ?? '',
      strVideo: map['strVideo'] ?? '',
      strCategory: map['strCategory'] ?? '',
      strIBA: map['strIBA'] ?? '',
      strAlcoholic: map['strAlcoholic'] ?? '',
      strGlass: map['strGlass'] ?? '',
      strInstructions: map['strInstructions'] ?? '',
      strInstructionsES: map['strInstructionsES'] ?? '',
      strInstructionsDE: map['strInstructionsDE'] ?? '',
      strInstructionsFR: map['strInstructionsFR'] ?? '',
      strInstructionsIT: map['strInstructionsIT'] ?? '',
      strInstructionsZHHANS: map['strInstructionsZHHANS'] ?? '',
      strInstructionsZHHANT: map['strInstructionsZHHANT'] ?? '',
      strDrinkThumb: map['strDrinkThumb'] ?? '',
      strIngredient1: map['strIngredient1'] ?? '',
      strIngredient2: map['strIngredient2'] ?? '',
      strIngredient3: map['strIngredient3'] ?? '',
      strIngredient4: map['strIngredient4'] ?? '',
      strIngredient5: map['strIngredient5'] ?? '',
      strIngredient6: map['strIngredient6'] ?? '',
      strIngredient7: map['strIngredient7'] ?? '',
      strIngredient8: map['strIngredient8'] ?? '',
      strIngredient9: map['strIngredient9'] ?? '',
      strIngredient10: map['strIngredient10'] ?? '',
      strIngredient11: map['strIngredient11'] ?? '',
      strIngredient12: map['strIngredient12'] ?? '',
      strIngredient13: map['strIngredient13'] ?? '',
      strIngredient14: map['strIngredient14'] ?? '',
      strIngredient15: map['strIngredient15'] ?? '',
      strMeasure1: map['strMeasure1'] ?? '',
      strMeasure2: map['strMeasure2'] ?? '',
      strMeasure3: map['strMeasure3'] ?? '',
      strMeasure4: map['strMeasure4'] ?? '',
      strMeasure5: map['strMeasure5'] ?? '',
      strMeasure6: map['strMeasure6'] ?? '',
      strMeasure7: map['strMeasure7'] ?? '',
      strMeasure8: map['strMeasure8'] ?? '',
      strMeasure9: map['strMeasure9'] ?? '',
      strMeasure10: map['strMeasure10'] ?? '',
      strMeasure11: map['strMeasure11'] ?? '',
      strMeasure12: map['strMeasure12'] ?? '',
      strMeasure13: map['strMeasure13'] ?? '',
      strMeasure14: map['strMeasure14'] ?? '',
      strMeasure15: map['strMeasure15'] ?? '',
      strImageSource: map['strImageSource'] ?? '',
      strImageAttribution: map['strImageAttribution'] ?? '',
      strCreativeCommonsConfirmed: map['strCreativeCommonsConfirmed'] ?? '',
      dateModified: map['dateModified'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DrinkModel.fromJson(String source) => DrinkModel.fromMap(json.decode(source));
}
