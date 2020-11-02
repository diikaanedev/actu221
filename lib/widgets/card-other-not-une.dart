import 'package:actu221/models/article.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/show-dialog-article.dart';
import 'package:flutter/material.dart';

class CardOtherNotUne extends StatelessWidget {
  final Article article;
  final Size size ;
  const CardOtherNotUne({Key key, @required this.article , @required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialogArtile(article: article , context: context , size: size),
          child: Container(
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
                      image: NetworkImage(article.urlPhoto), fit: BoxFit.contain)),
            ),
            Positioned(
                top: size.height * 0.3,
                left: size.width * 0.005,
                child: Card(
                  elevation: 5,
                  child: Center(
                    child: Container(
                      height: 60,
                      width: size.width * 0.43 - 5,
                      color: colorSecondaire,
                      child: Column(
                        children: [
                          SizedBox(height: 25,),
                          Center(
                            child: Text(
                              '${article.titre}'.toUpperCase(),
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            Positioned(
              top: size.height * 0.29,
              left: size.width * 0.007,
              child: Center(
                child: Container(
                  height: 30,
                  color: colorPrimaire,
                  width: size.width / 8,
                  child: Center(
                    child: Text(
                      '${article.tag}'.toUpperCase(),
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold ,color: Colors.white),
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
