import 'package:flutter/material.dart';
import 'package:thecocktaildb/src/features/drink/data/datasource/drink_datasource_impl.dart';
import 'package:thecocktaildb/src/features/drink/domain/infra/drink_repository.dart';
import 'package:thecocktaildb/src/features/drink/infra/datasources/drink_datasource.dart';
import 'package:thecocktaildb/src/features/drink/infra/repository/drink_repository_impl.dart';
import 'package:thecocktaildb/src/features/drink/ui/drink_detail.dart';
import 'package:thecocktaildb/src/features/drink/ui/widgets/app_bar_widget.dart';

import '../domain/entities/drink_entity.dart';
import '../domain/usecases/drink_usecases/get_drink_by_alchoolic_usecase.dart';
import '../domain/usecases/drink_usecases/get_drink_by_alchoolic_usecase_impl.dart';
import 'widgets/card_item_widget.dart';

class DrinkListPage extends StatelessWidget {
  static const routeName = 'drinkList';

  const DrinkListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DrinkDatasource drinkDatasource = DioDrinkDatasourceImpl();
    DrinkRepository drinkRepository = DrinkRepositoryImpl(drinkDataSource: drinkDatasource);
    GetDrinkByAlchoolic getDrinkByAlchoolic = GetDrinkByAlchoolicImpl(drinkRepository: drinkRepository);

    final String typeDrink = ModalRoute.of(context)!.settings.arguments.toString();

    return Scaffold(
      appBar: AppBarWidget(title: Text(typeDrink)),
      body: FutureBuilder<List<DrinkEntity>>(
        future: getDrinkByAlchoolic.call(typeDrink),
        builder: (context, snapshot) => snapshot.hasData
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      DrinkEntity drink = snapshot.data![index];
                      return DrinkCardWidget(
                          id: drink.id,
                          image: drink.urlImage,
                          title: drink.name,
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              DrinkDetail.routeName,
                              arguments: drink.id,
                            );
                          });
                    }),
              )
            : const SizedBox(
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.yellowAccent,
                  ),
                ),
              ),
      ),
    );
  }
}
