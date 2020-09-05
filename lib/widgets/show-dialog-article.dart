import 'package:actu221/data/articles.dart';
import 'package:actu221/models/article.dart';
import 'package:actu221/screens/home.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/card-dialog-tag.dart';
import 'package:actu221/widgets/list-photo-dialog.dart';
import 'package:actu221/widgets/text-article.dart';
import 'package:actu221/widgets/titre-text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'titre-text.dart';

showDialogArtile({BuildContext context, Article article, Size size}) async {
  if(article.allFichier==null) {
    article.allFichier = [];
  }
  return showDialog(
      context: context,
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: TitreText(size: size, titre: article.titre),
        content: Container(
            height: size.height * 0.9,
            width: size.width * 0.6,
            color: colorSecondaire,
            child: Row(
              children: [
                Container(
                  height: size.height * 0.9,
                  width: size.width * 0.44,
                  child: Column(
                    children: [
                      Container(
                        height: size.height * .15,
                        width: size.width * .45,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/bannière-facebook.png'),
                                fit: BoxFit.fitWidth)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: size.height * 0.15,
                        width: size.width * .45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: size.width * .14,
                              child: TitreText(size: size, titre: 'PUB REGIE'),
                            ),
                            Container(
                              width: size.width * .14,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(article.urlPhoto),
                                      fit: BoxFit.contain)),
                            ),
                            Container(
                              width: size.width * .14,
                              child: TitreText(size: size, titre: 'PUB REGIE'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 24,
                        child: TitreText(
                          size: size,
                          titre: article.tag,
                          fontSize: 12,
                        ),
                      ),
                      Container(
                        height: size.height * .22,
                        // color: Colors.blue,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              // color: colorPrimaire,
                              height: size.height * 0.5,
                              width: size.width,
                              child: ArticleText(
                                size: size,
                                titre: article.body,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      article.allFichier.length > 0
                          ? Container(
                              height: size.height * 0.19,
                              //color: Colors.amber,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                children: getAllPhoto(context,size, article),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.15,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        height: size.height * .2,
                        child: CardDialogTag(
                          article: articleOne,
                          size: size,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: size.height * .2,
                        child: CardDialogTag(
                          article: articleTwo,
                          size: size,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: size.height * .2,
                        child: CardDialogTag(
                          article: articleTree,
                          size: size,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: size.height * .2,
                        child: CardDialogTag(
                          article: articleOne,
                          size: size,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: size.height * .2,
                        child: CardDialogTag(
                          article: articleTwo,
                          size: size,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                color: colorPrimaire,
                onPressed: () {
                  Navigator.pop(
                    myGlobals.scaffoldKey.currentContext,
                  );
                },
                child: Text(
                  "Fermer".toUpperCase(),
                ),
              ),
            ),
          )
        ],
      ));
}
