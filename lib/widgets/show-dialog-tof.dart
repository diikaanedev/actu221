import 'package:actu221/models/article.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

showDialogTof({BuildContext context, Article article, int i}) {
  Size size = context.size;
  return showDialog(
    context: context,
    barrierDismissible: true,
    child: AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white60,
      contentPadding: EdgeInsets.all(0),
      content: Row(children: [
        GestureDetector(
          onTap: () {
            print(i);
            if (i < 1) {
              i = article.allFichier.length - 1;
              Navigator.pop(context);
              showDialogTof(context: context, article: article, i: i);
            } else {
              i--;
              Navigator.pop(context);
              showDialogTof(context: context, article: article, i: i);
            }
          },
          child: Container(
              height: size.height * 0.7,
              width: size.width * 0.02,
              color: Colors.white,
              child: Center(child: Image.asset('assets/images/back.png'))),
        ),
        Container(
          height: size.height * 0.7,
          color: Colors.transparent,
          width: size.width * 0.5,
          child: Image.asset(
            article.allFichier[i],
            fit: BoxFit.cover,
          ),
        ),
        GestureDetector(
          onTap: () {
            if (article.allFichier.length <= i + 1) {
              i = 0;
              Navigator.pop(context);
              showDialogTof(context: context, article: article, i: i);
            } else {
              i++;
              Navigator.pop(context);
              showDialogTof(context: context, article: article, i: i);
            }
          },
          child: Container(
              height: size.height * 0.7,
              width: size.width * 0.02,
              color: Colors.white,
              child: Center(child: Image.asset('assets/images/next.png'))),
        ),
      ]),
    ),
  );
}
