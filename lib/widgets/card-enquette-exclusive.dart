
import 'package:flutter/cupertino.dart';

class CardEnquetteExclusive extends StatelessWidget {
  const CardEnquetteExclusive({
    Key key,
    @required this.size,
    @required this.urlPath
  }) : super(key: key);

  final Size size;
  final String urlPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .3,
      //color: Colors.red,
      child: Stack(
        children: [
          Container(
            width: size.width * .3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(
                        '$urlPath'),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}

