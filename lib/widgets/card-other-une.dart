import 'package:flutter/material.dart';

class CardOtherUne extends StatelessWidget {
  final String urlPath;
  final String titre;
  const CardOtherUne(
      {Key key,
      @required this.size,
      @required this.urlPath,
      @required this.titre})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.6,
      width: size.width * 0.5 - 5,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      //color: Colors.red,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.3,
            width: size.width * 0.25 - 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage(urlPath), fit: BoxFit.cover)),
          ),
          Positioned(
              top: size.height * 0.2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  color: Colors.white.withOpacity(0.4),
                  child: Center(
                    child: Container(
                      height: 50,
                      width: size.width * 0.20 - 5,
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          '$titre',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
