import 'package:actu221/utils/constant.dart';
import 'package:flutter/material.dart';

import '../models/article.dart';
import 'show-dialog-article.dart';

class CardOtherUne extends StatelessWidget {
  final Article article;
  const CardOtherUne({
    Key key,
    @required this.article,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          showDialogArtile(article: article, context: context, size: size),
      child: Container(
        height: size.height * 0.6,
        // width: size.width * 0.5 - 5,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        // color: Colors.red,
        child: Stack(
          children: [
            Container(
              height: size.height * 0.3,
              width: size.width * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  // color: Colors.red,
                  image: DecorationImage(
                      image: NetworkImage(article.urlPhoto),
                      fit: BoxFit.contain)),
            ),
            Positioned(
                top: size.height * 0.2,
                left: -15,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 4,
                    // color: Colors.white.withOpacity(0.4),
                    color: Colors.blue,
                    child: Center(
                      child: Container(
                        height: 50,
                        width: size.width * 0.2,
                        decoration: BoxDecoration(color: colorPrimaire),
                        child: Center(
                          child: Text(
                            '${article.titre}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            Positioned(
                top: size.height * 0.18,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    color: Colors.white.withOpacity(0.4),
                    child: Center(
                      child: Container(
                        height: 25,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(color: Colors.white),
                        // color: colorPrimaire.withOpacity(0.5),
                        child: Center(
                          child: Text(
                            '${article.tag}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: colorPrimaire,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
