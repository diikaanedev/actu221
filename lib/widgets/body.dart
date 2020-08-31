import 'package:actu221/data/articles.dart';
import 'package:actu221/models/article.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/card-a-la-une.dart';
import 'package:actu221/widgets/card-enquette-exclusive.dart';
import 'package:actu221/widgets/card-other-not-une-second.dart';
import 'package:actu221/widgets/card-other-not-une.dart';
import 'package:actu221/widgets/card-other-une.dart';
import 'package:actu221/widgets/titre-text.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Article article = articleOne;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            //color: Colors.blue,
            height: size.height * 0.6,
            width: size.width,
            child: Row(
              children: [
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.2 - 5,
                  //Color: Colors.green,
                  child: Column(
                    children: [
                      Container(
                        height: size.height * 0.28,
                        //color: Colors.cyan,
                        child: CardOtherUne(
                          size: size,
                          urlPath: 'assets/images/ens_sup.jpeg',
                          titre:
                              'Les bacheliers non-orientés menacent de saboter la reprise des cours',
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: size.height * 0.28,
                        //color: Colors.blue,
                        child: CardOtherUne(
                          size: size,
                          urlPath:
                              'assets/images/tribunal de dakar justice.jpg',
                          titre: 'Le Sytjust annonce une trêve de 96 heures',
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                CardALaUne(
                  size: size,
                  article: article,
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.2 - 5,
                  //Color: Colors.green,
                  child: Column(
                    children: [
                      Container(
                        height: size.height * 0.28,
                        //color: Colors.cyan,
                        child: CardOtherUne(
                          size: size,
                          urlPath: 'assets/images/article2.jpeg',
                          titre: 'TROISIÈME MANDAT',
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: size.height * 0.28,
                        //color: Colors.blue,
                        child: CardOtherUne(
                          size: size,
                          urlPath: 'assets/images/article.jpeg',
                          titre: 'PHOSPHATE DE MATAM',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: size.width,
            //color: Colors.red,
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitreText(
                  size: size,
                  titre: 'Découverte',
                ),
                TitreText(
                  size: size,
                  titre: 'Scandales',
                ),
                TitreText(
                  size: size,
                  titre: 'Reportage',
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.yellow,
            height: size.height * 0.15,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardEnquetteExclusive(
                  size: size,
                  urlPath: 'assets/images/decouverte.jpg',
                ),
                CardEnquetteExclusive(
                  size: size,
                  urlPath: 'assets/images/entreprenariat.jpg',
                ),
                CardEnquetteExclusive(
                  size: size,
                  urlPath: 'assets/images/exclusive.jpeg',
                ),
              ],
            ),
          ),
          Container(
            height: 75,
            child: TitreText(size: size, titre: 'ACTUALITÉS'),
          ),
          Container(
            // color: Colors.green,
            height: size.height,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .45,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              size: size,
                              titre: 'Titre de l\'article',
                              urlPath: 'assets/images/entreprenariat.jpg'),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              titre: 'Titre de l\'article',
                              size: size,
                              urlPath: 'assets/images/exclusive.jpeg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75,
            child: TitreText(size: size, titre: 'Dossier de la RÉDACTION'),
          ),
          Container(
            // color: Colors.green,
            height: size.height * .5,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height * .5,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .27,
                        //color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CardOtherNotUneSecond(
                              size: size,
                              urlPath: 'assets/images/exclusive.jpeg',
                              titre: 'DOSSIER DE LA REDACTION'),
                        ),
                      ),
                      Container(
                        height: size.height * .2,
                        width: size.width * .25,
                        child: Image.asset(
                          'assets/images/pub_logo_multicolor.png',
                          fit: BoxFit.contain,
                        ),
                        color: colorPrimaire,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * .5,
                  width: size.width * .45,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              size: size,
                              urlPath: 'assets/images/entreprenariat.jpg' ,
                              titre: 'dossier de la rédaction',),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * .5,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .27,
                        //color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CardOtherNotUneSecond(
                              size: size,
                              urlPath: 'assets/images/exclusive.jpeg',
                              titre: 'DOSSIER DE LA REDACTION'),
                        ),
                      ),
                      Container(
                        height: size.height * .2,
                        width: size.width * .25,
                        child: Image.asset(
                          'assets/images/pub_logo_multicolor.png',
                          fit: BoxFit.contain,
                        ),
                        color: colorPrimaire,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75,
            child: TitreText(size: size, titre: 'POLITIQUE'),
          ),
          Container(
            // color: Colors.green,
            height: size.height,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .45,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              titre: 'Titre de l\'article',
                              size: size,
                              urlPath: 'assets/images/entreprenariat.jpg'),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              titre: 'Titre de l\'article',
                              size: size,
                              urlPath: 'assets/images/exclusive.jpeg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75,
            child: TitreText(size: size, titre: 'ECONOMIE'),
          ),
          Container(
            // color: Colors.green,
            height: size.height,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .45,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              titre: 'Titre de l\'article',
                              size: size,
                              urlPath: 'assets/images/entreprenariat.jpg'),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              titre: 'Titre de l\'article',
                              size: size,
                              urlPath: 'assets/images/exclusive.jpeg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75,
            child: TitreText(size: size, titre: 'Ressource du Sénégal'),
          ),
          Container(
            // color: Colors.green,
            height: size.height,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .45,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              titre: 'Titre de l\'article',
                              size: size,
                              urlPath: 'assets/images/entreprenariat.jpg'),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              titre: 'Titre de l\'article',
                              size: size,
                              urlPath: 'assets/images/exclusive.jpeg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75,
            child: TitreText(size: size, titre: 'SOCIÉTÉ'),
          ),
          Container(
            // color: Colors.green,
            height: size.height,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .45,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              titre: 'Titre de l\'article',
                              size: size,
                              urlPath: 'assets/images/entreprenariat.jpg'),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              titre: 'Titre de l\'article',
                              size: size,
                              urlPath: 'assets/images/exclusive.jpeg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75,
            child: TitreText(size: size, titre: 'afrique'),
          ),
          Container(
            // color: Colors.green,
            height: size.height,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .45,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              size: size,
                              titre: 'Titre de \'article',
                              urlPath: 'assets/images/entreprenariat.jpg'),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              titre: 'Titre de \'article',
                              size: size,
                              urlPath: 'assets/images/exclusive.jpeg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75,
            child: TitreText(size: size, titre: 'technologie'),
          ),
          Container(
            // color: Colors.green,
            height: size.height,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .45,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              titre: 'Titre de l\'article',
                              size: size,
                              urlPath: 'assets/images/entreprenariat.jpg'),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              titre: 'Titre de l\'article',
                              size: size,
                              urlPath: 'assets/images/exclusive.jpeg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75,
            child: TitreText(size: size, titre: 'monde'),
          ),
          Container(
            // color: Colors.green,
            height: size.height,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .45,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              titre: 'Titre de l\'article',
                              size: size,
                              urlPath: 'assets/images/entreprenariat.jpg'),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              titre: 'Titre de l\'article',
                              size: size,
                              urlPath: 'assets/images/exclusive.jpeg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width * .25,
                  //color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/decouverte.jpg',
                            titre: 'DÉCOUVERTE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/exclusive.jpeg',
                            titre: 'EXCLUSIVE'),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            urlPath: 'assets/images/entreprenariat.jpg',
                            titre: 'ENTREPRENARIAT'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 500,
            width: 500,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
