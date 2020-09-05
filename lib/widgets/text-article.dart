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
          //border: Border.all(color: colorPrimaire , width: .2)
        ),
        //color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(titre,
              style: TextStyle(
                  // decoration: TextDecoration.underline,
                  fontSize: 14,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w300)),
        ));
  }
}
