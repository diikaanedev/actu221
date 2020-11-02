import 'package:actu221/screens/home.dart';
import 'package:actu221/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitreText extends StatelessWidget {
  const TitreText(
      {Key key, @required this.size, @required this.titre, this.fontSize = 24 , @required this.screen})
      : super(key: key);

  final Size size;
  final String titre;

  final int screen ; 

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => homeScreenState.setState (() {
        homeScreenState.screen = screen;
      }),
      child: Container(
          width: size.width * .3,
          //color: Colors.black,
          child: Center(
              child: Text(titre.toUpperCase(),
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: fontSize,
                      color: colorPrimaire,
                      fontWeight: FontWeight.bold)))),
    );
  }
}
