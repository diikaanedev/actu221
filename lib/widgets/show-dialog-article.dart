import 'package:actu221/models/article.dart';
import 'package:actu221/screens/home.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/card-dialog-tag.dart';
import 'package:actu221/widgets/list-photo-dialog.dart';
import 'package:actu221/widgets/text-article.dart';
import 'package:actu221/widgets/titre-text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'titre-text.dart';

showDialogArtile({BuildContext context, Article article, Size size}) async {
  if (article.allFichier == null) {
    article.allFichier = [];
  }
  List<Article> liste = homeScreenState.listeArticles
      .where(
          (element) => element.tag == article.tag && element.id != article.id)
      .toList();

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
                                      image: NetworkImage(article.urlPhoto),
                                      fit: BoxFit.cover)),
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
                        child: GestureDetector(
                          onTap: () {
                            homeScreenState.setState(() {
                              homeScreenState.categorieTitre =
                                  article.tag.toUpperCase();
                              homeScreenState.screen = 11;
                              Navigator.pop(context);
                            });
                          },
                          child: TitreText(
                            size: size,
                            titre: article.tag,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * .25,
                        // color: Colors.blue,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              // color: colorPrimaire,
                              height: size.height,
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
                              child: Carousel(
                                dotSize: 4.0,
                                dotSpacing: 15.0,
                                // radius: Radius.circular(10),
                                dotColor: Colors.lightGreenAccent,
                                indicatorBgPadding: 5.0,
                                dotBgColor: colorPrimaire.withOpacity(0.5),
                                borderRadius: true,
                                images: allTofCarousell(article),
                                // images: getAllPhoto(context, size, article),
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
                      children: listeWidgetPostSameTags(size, liste)),
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

List<Widget> listeWidgetPostSameTags(Size size, List<Article> liste) {
  List<Widget> l = [];

  for (var item in liste) {
    l.add(
      Container(
        height: size.height * .2,
        child: CardDialogTag(
          article: item,
          size: size,
        ),
      ),
    );
    l.add(
      SizedBox(
        height: 10,
      ),
    );
  }

  return l;
}

List<dynamic> allTofCarousell(Article article) {
  List<dynamic> l = [];
  for (var item in article.allFichier) {
    l.add(NetworkImage(item));
  }
  return l;
}
