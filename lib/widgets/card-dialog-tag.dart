import 'package:actu221/models/article.dart';
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
                      image: AssetImage(article.urlPhoto), fit: BoxFit.cover)),
            ),
            Positioned(
                top: size.height * 0.05,
                left: 0,
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
                            '${article.titre}',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
