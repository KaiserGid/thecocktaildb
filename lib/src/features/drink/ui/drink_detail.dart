import 'package:flutter/material.dart';
import 'package:thecocktaildb/src/features/drink/data/datasource/drink_datasource_impl.dart';
import 'package:thecocktaildb/src/features/drink/domain/entities/drink_entity.dart';
import 'package:thecocktaildb/src/features/drink/domain/infra/drink_repository.dart';
import 'package:thecocktaildb/src/features/drink/infra/datasources/drink_datasource.dart';
import 'package:thecocktaildb/src/features/drink/infra/repository/drink_repository_impl.dart';

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
        appBar: AppBar(
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
                        Image.network(snapshot.data!.urlImage),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.55,
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
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 24.0, left: 24, right: 24),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: HeaderDetailWidget(
                                      drinkName: drink!.name,
                                      drinkType: drink.isAlchoolic,
                                      rating: 50.0,
                                    ),
                                  ),
                                  RowDrinkDetailCenterWidget(drink: drink),
                                  ...drink.ingredients.map((e) => Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text(e.measure),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(e.name),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 32.0),
                                    child: Text(
                                      drink.instruction,
                                      style: Theme.of(context).textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
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
