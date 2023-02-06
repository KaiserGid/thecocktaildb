import 'package:thecocktaildb/src/features/drink/ui/home_drink_page.dart';

import 'features/drink/ui/drink_detail.dart';
import 'features/drink/ui/drink_list_page.dart';

final routers = {
  '/': (_) => const HomeDrinkPage(),
  DrinkListPage.routeName: (_) => const DrinkListPage(),
  DrinkDetail.routeName: (_) => const DrinkDetail(),
};
