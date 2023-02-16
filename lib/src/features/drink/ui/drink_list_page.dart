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
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  DrinkEntity drink = snapshot.data![index];
                  return Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: DrinkCardWidget(
                          id: drink.id,
                          image: drink.urlImage,
                          title: drink.name,
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              DrinkDetail.routeName,
                              arguments: drink.id,
                            );
                          }));
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

class DrinkCardWidget extends StatelessWidget {
  final String title;
  final String image;
  final String id;
  final Function() onTap;
  const DrinkCardWidget({
    super.key,
    required this.title,
    required this.image,
    required this.id,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Image.network(
              fit: BoxFit.cover,
              image,
              loadingBuilder: (context, child, loadingProgress) => loadingProgress == null ? child : const CircularProgressIndicator(),
            ),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
