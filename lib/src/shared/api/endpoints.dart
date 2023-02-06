class EndPoints {
  static String searchCocktailByName(String name) {
    return 'http://www.thecocktaildb.com/api/json/v1/1/search.php?s=$name';
  }

  static String listAllCocktailsByFirstLetter(String letter) {
    return 'http://www.thecocktaildb.com/api/json/v1/1/search.php?f=$letter';
  }

  static String searchIngredientByName(String ingredient) {
    return 'http://www.thecocktaildb.com/api/json/v1/1/search.php?i=$ingredient';
  }

  static String lookupFullCocktailDetailsById({required String id}) {
    return 'http://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=$id';
  }

  static stringLookupIngredientByID(int id) {
    return 'http://www.thecocktaildb.com/api/json/v1/1/lookup.php?iid=$id';
  }

  static lookupRandomCocktail() {
    return 'http://www.thecocktaildb.com/api/json/v1/1/random.php';
  }

  static searchByIngredient(String ingredient) {
    return 'http://www.thecocktaildb.com/api/json/v1/1/filter.php?i=$ingredient';
  }

  static filterIsAlcoholic({required String type}) {
    return 'http://www.thecocktaildb.com/api/json/v1/1/filter.php?a=$type';
  }
  // static filterNoAlcoholic() {
  //   return 'http://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Non_Alcoholic';
  // }
  // static filterOptionalaAlcohol() {
  //   return 'http://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Optional%alcohol';
  // }

  static searchByCategory(String category) {
    return 'http://www.thecocktaildb.com/api/json/v1/1/filter.php?c=$category';
  }

  static searchByGlass(String glassType) {
    return 'http://www.thecocktaildb.com/api/json/v1/1/filter.php?g=$glassType';
  }

  static searchAllCategoryes() {
    return 'https://www.thecocktaildb.com/api/json/v1/1/list.php?c=list';
  }

  static searchAllGlasses() {
    return 'https://www.thecocktaildb.com/api/json/v1/1/list.php?g=list';
  }

  static searchAllIngredients() {
    return 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list';
  }

  static searchAllTypes() {
    //reponse all  types: Non_Alcoholic, Optional Alcohol or Alcoholic
    return 'https://www.thecocktaildb.com/api/json/v1/1/list.php?t=list';
  }
}
