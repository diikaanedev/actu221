import 'package:actu221/data/articles.dart';
import 'package:actu221/models/article.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/default_button.dart';
import 'package:actu221/widgets/text-article.dart';
import 'package:actu221/widgets/titre-text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showDialogArtile({BuildContext context, Article article, Size size}) async {
  return showDialog(
      context: context,
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: TitreText(size: size, titre: article.titre),
        content: Container(
            height: size.height * 0.8,
            width: size.width * 0.6,
            color: colorSecondaire,
            child: Row(
              children: [
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.44,
                  // color: Colors.green,
                  child: Column(
                    children: [
                      Container(
                        height: size.height * .15,
                        width: size.width * .45,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/bannière-facebook.png'),
                                fit: BoxFit.cover)),
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
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: size.height * .48,
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
                      )
                    ],
                  ),
                ),
                SizedBox(width: 18,),
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.15,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        height: size.height * .2,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: size.height * .2,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: size.height * .2,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: size.height * .2,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: size.height * .2,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            )),
        actions: [
          DefaultButton(
            color: colorPrimaire,
            press: () => Navigator.pop(context),
            text: 'Fermer',
          )
        ],
      ));
}
