import 'package:actu221/models/article.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/show-dialog-article.dart';
import 'package:flutter/material.dart';

class CardALaUne extends StatelessWidget {
  final Article article;
  const CardALaUne({Key key, @required this.size, @required this.article})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          showDialogArtile(size: size, article: article, context: context),
      child: Container(
        height: size.height * 0.6,
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
                      image: NetworkImage(article.urlPhoto), fit: BoxFit.cover)),
            ),
            Positioned(
                top: size.height * 0.4,
                left: size.width * 0.02,
                child: Card(
                  // color: colorPrimaire.withOpacity(0.2),
                  elevation: 5,
                  child: Center(
                    child: Container(
                      height: 70,
                      width: size.width * 0.45 - 5,
                      decoration: BoxDecoration(
                        color: colorSecondaire,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Center(
                            child: Text(
                              '${article.titre}',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            Positioned(
                left: size.width * 0.022,
                top: size.height * 0.4 - 20,
                child: Center(
                    child: Container(
                        color: colorPrimaire,
                        height: 40,
                        width: size.width / 12,
                        child: Center(
                          child: Text(
                            article.tag.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                              ),
                          ),
                        )))),
          ],
        ),
      ),
    );
  }
}
