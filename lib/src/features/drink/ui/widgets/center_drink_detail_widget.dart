import 'package:flutter/material.dart';

import '../../domain/entities/drink_entity.dart';

class RowDrinkDetailCenterWidget extends StatelessWidget {
  const RowDrinkDetailCenterWidget({
    Key? key,
    required this.drink,
  }) : super(key: key);

  final DrinkEntity drink;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Text('Glass type'),
            Text(drink.glass),
          ],
        ),
        const VerticalDivider(
          color: Colors.white,
          thickness: 1,
          width: 20,
        ),
        Column(
          children: [
            const Text('Glass type'),
            Text(
              drink.glass,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ],
    );
  }
}
