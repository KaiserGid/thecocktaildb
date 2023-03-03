import 'features/drink/ui/pages/drink_detail.dart';
import 'features/drink/ui/pages/drink_list_page.dart';
import 'features/drink/ui/pages/home_drink_page.dart';

final routers = {
  '/': (_) => const HomeDrinkPage(),
  DrinkListPage.routeName: (_) => const DrinkListPage(),
  DrinkDetail.routeName: (_) => const DrinkDetail(),
};
