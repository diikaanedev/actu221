import 'package:actu221/utils/constant.dart';
import 'package:flutter/cupertino.dart';

class TitreText extends StatelessWidget {
  const TitreText({
    Key key,
    @required this.size,
    @required this.titre
  }) : super(key: key);

  final Size size;
  final String titre;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width * .3,
        //color: Colors.black,
        child: Center(
            child: Text(titre.toUpperCase(),
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 24,
                    color: colorPrimaire,
                    fontWeight: FontWeight.bold))));
  }
}
