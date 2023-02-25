import 'package:flutter/material.dart';

class HeaderDetailWidget extends StatelessWidget {
  final String drinkType;
  final double rating;

  const HeaderDetailWidget({
    Key? key,
    required this.drinkType,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(drinkType, style: Theme.of(context).textTheme.headline6),
        const SizedBox(height: 16),
        Row(
          children: [
            Row(
              children: [
                const Icon(Icons.favorite, color: Colors.yellowAccent),
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
