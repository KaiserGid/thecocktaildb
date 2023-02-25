import 'package:flutter/material.dart';
import 'package:thecocktaildb/src/features/drink/data/datasource/drink_datasource_impl.dart';
import 'package:thecocktaildb/src/features/drink/domain/entities/drink_entity.dart';
import 'package:thecocktaildb/src/features/drink/domain/infra/drink_repository.dart';
import 'package:thecocktaildb/src/features/drink/infra/datasources/drink_datasource.dart';
import 'package:thecocktaildb/src/features/drink/infra/repository/drink_repository_impl.dart';
import 'package:thecocktaildb/src/features/drink/ui/widgets/app_bar_widget.dart';

import '../domain/usecases/drink_usecases/get_drink_by_id_usecase.dart';
import '../domain/usecases/drink_usecases/get_drink_by_id_usecase_impl.dart';
import 'widgets/center_drink_detail_widget.dart';
import 'widgets/header_drink_detail_widget.dart';

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
        appBar: AppBarWidget(
          title: const Text(''),
        ),
        extendBodyBehindAppBar: true,
        body: FutureBuilder(
            future: getDrinkByIdUsecase.call(args),
            builder: (context, snapshot) {
              DrinkEntity? drink = snapshot.data;
              return snapshot.hasData
                  ? Stack(
                      children: [
                        Image.network(
                          drink!.urlImage,
                          // scale: 1,
                          height: MediaQuery.of(context).size.height * 0.5,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.purple,
                                    Colors.grey.shade900,
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  stops: const [0.01, 0.7]),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 24.0, left: 24, right: 24),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: HeaderDetailWidget(
                                        drinkType: drink.isAlchoolic,
                                        rating: 50.0,
                                      ),
                                    ),
                                    const SizedBox(height: 32),
                                    RowDrinkDetailCenterWidget(drink: drink),
                                    const SizedBox(height: 32),
                                    Text(
                                      'Ingredients'.toUpperCase(),
                                      style: const TextStyle(color: Colors.yellowAccent),
                                    ),
                                    const SizedBox(height: 8),
                                    ...drink.ingredients.map((e) => Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                Text(e.measure),
                                              ],
                                            ),
                                            const SizedBox(width: 8),
                                            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(e.name)]),
                                          ],
                                        )),
                                    const SizedBox(height: 32),
                                    Text(
                                      'Instructions'.toUpperCase(),
                                      style: const TextStyle(color: Colors.yellowAccent),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                                      child: Text(
                                        drink.instruction,
                                        style: Theme.of(context).textTheme.bodyMedium,
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              color: Theme.of(context).colorScheme.primaryContainer,
                              child: Center(
                                child: Text(
                                  drink.name,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.headline4!.copyWith(color: Theme.of(context).colorScheme.primary),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    );
            }));
  }
}
