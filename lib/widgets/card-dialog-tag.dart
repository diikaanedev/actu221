import 'package:actu221/models/article.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/show-dialog-article.dart';
import 'package:flutter/material.dart';

class CardDialogTag extends StatelessWidget {
  final Article article ;
  final Size size ;
  const CardDialogTag(
      {Key key,
      @required this.size,
      @required this.article
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        showDialogArtile(article: article , size: size ,context: context);
      },
          child: Container(
        height: size.height * 0.6,
        width: size.width * 0.5 - 5,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        //color: Colors.red,
        child: Stack(
          children: [
            Container(
              height: size.height * .2,
              width: size.width * 0.25 - 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: NetworkImage(article.urlPhoto), fit: BoxFit.contain)),
            ),
            Positioned(
                top: size.height * 0.15,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 3,
                    color: Colors.white.withOpacity(0.4),
                    child: Center(
                      child: Container(
                        height: 50,
                        width: size.width * 0.20,
                        color: colorPrimaire,
                        child: Padding(
                          padding: const EdgeInsets.only(top:8.0 , left: 2.0),
                          child: Text(
                            '${article.titre}',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 14,color: Colors.white ,  fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
                Positioned(
                top: size.height * 0.13,
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
