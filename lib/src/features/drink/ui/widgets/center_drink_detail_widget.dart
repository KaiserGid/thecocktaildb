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
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Glass type'.toUpperCase(),
              style: const TextStyle(color: Colors.yellowAccent),
            ),
            Text(drink.glass, overflow: TextOverflow.ellipsis),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Category'.toUpperCase(),
              style: const TextStyle(color: Colors.yellowAccent),
            ),
            Text(drink.category, overflow: TextOverflow.ellipsis),
          ],
        ),
      ],
    );
  }
}
