import 'package:flutter/material.dart';
import 'package:thecocktaildb/src/features/drink/domain/enuns/type_drinks_enums.dart';
import 'package:thecocktaildb/src/features/drink/ui/drink_list_page.dart';

class HomeDrinkPage extends StatelessWidget {
  const HomeDrinkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, DrinkListPage.routeName, arguments: TypeDrinkEnum.alcoholic.type),
              child: const Text('Alcolico'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, DrinkListPage.routeName, arguments: TypeDrinkEnum.nonAlcoholic.type),
              child: const Text('Non-Alcholic'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, DrinkListPage.routeName, arguments: TypeDrinkEnum.optionalAlcohol.type),
              child: const Text('Optional Alcoolic'),
            ),
          ],
        ),
      ),
    );
  }
}
