import 'package:flutter/material.dart';
import 'package:thecocktaildb/src/features/drink/data/datasource/drink_datasource_impl.dart';
import 'package:thecocktaildb/src/features/drink/domain/infra/drink_repository.dart';
import 'package:thecocktaildb/src/features/drink/infra/datasources/drink_datasource.dart';
import 'package:thecocktaildb/src/features/drink/infra/repository/drink_repository_impl.dart';
import 'package:thecocktaildb/src/features/drink/ui/drink_detail.dart';

import '../domain/entities/drink_entity.dart';
import '../domain/usecases/drink_usecases/get_drink_by_alchoolic_usecase.dart';
import '../domain/usecases/drink_usecases/get_drink_by_alchoolic_usecase_impl.dart';

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
      appBar: AppBar(
        title: Text(typeDrink),
      ),
      body: FutureBuilder<List<DrinkEntity>>(
        future: getDrinkByAlchoolic.call(typeDrink),
        builder: (context, snapshot) => snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  DrinkEntity drink = snapshot.data![index];
                  return Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: ListTile(
                        leading: Image.network(
                          drink.urlImage,
                          loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : const CircularProgressIndicator(),
                        ),
                        title: Text(drink.name),
                        subtitle: Text(drink.isAlchoolic),
                        onTap: () => Navigator.pushNamed(
                          context,
                          DrinkDetail.routeName,
                          arguments: drink.id,
                        ),
                      ));
                })
            : const Center(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
      ),
    );
  }
}
