import 'package:actu221/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleText extends StatelessWidget {
  const ArticleText({
    Key key,
    @required this.size,
    @required this.titre
  }) : super(key: key);

  final Size size;
  final String titre;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width * .43,
        decoration: BoxDecoration(
          border: Border.all(color: colorPrimaire , width: .2)
        ),
        //color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(titre,
              style: TextStyle(
                  // decoration: TextDecoration.underline,
                  fontSize: 18,
                  letterSpacing: 1.2,
                  decoration: TextDecoration.none,
                  wordSpacing: 1.2,
                  fontWeight: FontWeight.bold)),
        ));
  }
}
