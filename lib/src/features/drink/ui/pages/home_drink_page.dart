import 'package:flutter/material.dart';
import 'package:thecocktaildb/src/features/drink/domain/enuns/type_drinks_enums.dart';

import 'drink_list_page.dart';

class HomeDrinkPage extends StatelessWidget {
  const HomeDrinkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Card(
            child: SizedBox(
              height: 300,
              width: 200,
              child: Center(), //Todo! parei aqui
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              DrinkListPage.routeName,
              arguments: TypeDrinkEnum.alcoholic.type,
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Image.asset(
                'assets/images/alcoolico.png',
                fit: BoxFit.cover,
                scale: 1,
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              DrinkListPage.routeName,
              arguments: TypeDrinkEnum.nonAlcoholic.type,
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Image.asset(
                'assets/images/non_alcolic.png',
                fit: BoxFit.cover,
                scale: 1,
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              DrinkListPage.routeName,
              arguments: TypeDrinkEnum.optionalAlcohol.type,
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Image.asset(
                'assets/images/optional.png',
                fit: BoxFit.cover,
                scale: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
