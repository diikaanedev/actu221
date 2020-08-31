import 'package:actu221/utils/constant.dart';
import 'package:flutter/material.dart';

class CardOtherNotUne extends StatelessWidget {
  final String urlPath;
  final String titre ;
  const CardOtherNotUne({Key key, @required this.size, @required this.urlPath, @required this.titre})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      width: size.width * 0.5 - 5,
      //color: Colors.red,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.6,
            width: size.width * 0.5 - 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(urlPath), fit: BoxFit.cover)),
          ),
          Positioned(
              top: size.height * 0.3,
              left: size.width * 0.005,
              child: Card(
                elevation: 5,
                child: Center(
                  child: Container(
                    height: 100,
                    width: size.width * 0.43 - 5,
                    color: colorSecondaire,
                    child: Column(
                      children: [
                        Center(child: Text('')),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            titre.toUpperCase(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}