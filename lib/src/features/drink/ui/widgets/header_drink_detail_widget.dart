import 'package:flutter/material.dart';

class HeaderDetailWidget extends StatelessWidget {
  final String drinkName;
  final String drinkType;
  final double rating;

  const HeaderDetailWidget({
    Key? key,
    required this.drinkName,
    required this.drinkType,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          drinkName,
          style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.yellowAccent),
        ),
        Text(
          drinkType,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.favorite,
                  color: Colors.yellowAccent,
                ),
                const SizedBox(width: 10),
                Text('$rating'),
              ],
            ),
            const SizedBox(width: 50),
            Row(
              children: const [
                Icon(Icons.timer_sharp),
                SizedBox(width: 10),
                Text('239'),
              ],
            )
          ],
        ),
      ],
    );
  }
}
