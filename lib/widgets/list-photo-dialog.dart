import 'package:actu221/models/article.dart';
import 'package:actu221/screens/home.dart';
import 'package:actu221/widgets/show-dialog-tof.dart';
import 'package:flutter/material.dart';

GestureDetector containertfodialog(BuildContext context, Article article , int i) {
  Size size = MediaQuery.of(context).size;
  return GestureDetector(
    onTap: () {
      print("GestureDetector GestureDetector $i");
      showDialogTof(context: context ,article: article ,i:  i);
    },
    child: Container(
      height: size.height * 0.19,
      width: size.width * 0.15,
      child: Image.asset(article.allFichier[i]),
    ),
  );
}

List<Widget> getAllPhoto(BuildContext context,Size size, Article article) {
  List<Widget> photos = [];
  int i = 0;
  for (var item in article.allFichier) {
    photos.add(containertfodialog(myGlobals.scaffoldKey.currentContext, article,i));
    photos.add(SizedBox(
      width: 10,
    ));
    i++;
  }
  return photos;
}
