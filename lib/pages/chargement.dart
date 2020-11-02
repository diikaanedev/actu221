
import 'package:actu221/screens/home.dart';
import 'package:flutter/material.dart';

Widget buildChardementPage(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 3),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Container(
            height: homeScreenState.screen == 1
                ? size.height * .80
                : size.height * .60,
            decoration: BoxDecoration(
              image: DecorationImage(image:AssetImage('assets/images/chargement3.gif') , fit: BoxFit.cover)
            ),
          ),
        )
      ],
    ),
  );
}
