import 'package:flutter/material.dart';
import 'package:thecocktaildb/src/features/drink/data/datasource/drink_datasource_impl.dart';
import 'package:thecocktaildb/src/features/drink/domain/infra/drink_repository.dart';
import 'package:thecocktaildb/src/features/drink/infra/datasources/drink_datasource.dart';
import 'package:thecocktaildb/src/features/drink/infra/repository/drink_repository_impl.dart';

import '../domain/usecases/drink_usecases/get_drink_by_id_usecase.dart';
import '../domain/usecases/drink_usecases/get_drink_by_id_usecase_impl.dart';

class DrinkDetail extends StatelessWidget {
  static const routeName = 'DrinkDetail';

  const DrinkDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DrinkDatasource drinkDatasource = DioDrinkDatasourceImpl();
    DrinkRepository drinkRepository = DrinkRepositoryImpl(drinkDataSource: drinkDatasource);
    GetDrinkByIdUsecase getDrinkByIdUsecase = GetDrinkByIdUsecaseImpl(drinkRepository: drinkRepository);

    final args = ModalRoute.of(context)!.settings.arguments.toString();

    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: FutureBuilder(
            future: getDrinkByIdUsecase.call(args),
            builder: (context, snapshot) => snapshot.hasData
                ? Column(
                    children: [
                      Image.network(snapshot.data!.urlImage),
                      Text(snapshot.data!.name),
                      Text(snapshot.data!.isAlchoolic),
                    ],
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  )));
  }
}
