import 'package:actu221/models/article.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/show-dialog-article.dart';
import 'package:flutter/material.dart';

class CardOtherNotUneSecond extends StatelessWidget {
  final Article article;
  final Size size;
  const CardOtherNotUneSecond(
      {Key key, @required this.size, @required this.article})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          showDialogArtile(article: article, context: context, size: size),
      child: Container(
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
                      image: NetworkImage(article.urlPhoto),
                      fit: BoxFit.contain)),
            ),
            Positioned(
                top: size.height * 0.2,
                left: size.width * .02,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    // color: Colors.white.withOpacity(0.6),
                    child: Center(
                      child: Container(
                        height: 50,
                        width: size.width * 0.20 - 5,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            '${article.titre}',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            Positioned(
              left: size.width * .02,
              top: size.height * 0.18,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    color: colorPrimaire,
                    child: Center(
                      child: Container(
                        height: 25,
                        width: size.width * 0.08,
                        color: colorPrimaire,
                        child: Center(
                          child: Text(
                            '${article.tag}',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
