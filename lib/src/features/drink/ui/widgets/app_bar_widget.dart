import 'package:flutter/material.dart';

class AppBarWidget extends AppBar {
  AppBarWidget({super.key, super.title, super.actions})
      : super(
            leadingWidth: 80,
            leading: Builder(builder: (context) {
              return InkWell(
                onTap: Navigator.of(context).pop,
                child: const Icon(
                  Icons.arrow_circle_left,
                  size: 50,
                  color: Colors.yellowAccent,
                ),
              );
            }));
}
