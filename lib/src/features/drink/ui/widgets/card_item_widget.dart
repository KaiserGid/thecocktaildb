import 'package:flutter/material.dart';
import 'package:thecocktaildb/src/features/drink/domain/entities/drink_entity.dart';

class DrinkCardWidget extends StatelessWidget {
  final DrinkEntity drink;
  final Function() onTap;

  const DrinkCardWidget({
    super.key,
    required this.drink,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(64)),
        child: Card(
          child: Stack(
            children: [
              Image.network(
                fit: BoxFit.cover,
                drink.urlImage,
                loadingBuilder: (context, child, loadingProgress) => loadingProgress == null
                    ? child
                    : const CircularProgressIndicator(
                        // color: Colors.yellowAccent,
                        ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 20,
                  child: Center(
                    child: Text(
                      style: const TextStyle(color: Color.fromARGB(255, 57, 0, 90)),
                      drink.name,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
