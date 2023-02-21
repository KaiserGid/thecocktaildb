import 'package:flutter/material.dart';

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
      child: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(64)),
        child: Stack(
          children: [
            Image.network(
              fit: BoxFit.cover,
              image,
              loadingBuilder: (context, child, loadingProgress) => loadingProgress == null
                  ? child
                  : const CircularProgressIndicator(
                      color: Colors.yellowAccent,
                    ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 20,
                color: Colors.yellowAccent,
                child: Center(
                  child: Text(
                    style: const TextStyle(color: Color.fromARGB(255, 57, 0, 90)),
                    title,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
