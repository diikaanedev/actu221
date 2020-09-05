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

class BodyAcceuil extends StatelessWidget {
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
                          article: articleTwo,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: size.height * 0.28,
                        //color: Colors.blue,
                        child: CardOtherUne(
                          size: size,
                          article: articleTree,
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
                          article: articleTwo,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: size.height * 0.28,
                        //color: Colors.blue,
                        child: CardOtherUne(
                          size: size,
                          article: articleTree,
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                            article: articleOne,
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                            article: articleTree,
                            size: size,
                          ),
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
                        child:CardOtherNotUneSecond(
                            size: size,
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                            article: articleOne,),
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
                            article: articleTwo,
                          ),
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
                            article: articleTwo,),
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                            article: articleTwo,
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                            article: articleOne,
                            size: size,
                          ),
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                            article: articleOne,
                            size: size,
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                            size: size,
                            article: articleTree,
                          ),
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                            article: articleTree,
                            size: size,
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                            article: articleTwo,
                            size: size,
                          ),
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                              article: articleTwo,
                              size: size,),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                            article: articleTwo,
                              size: size,),
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                              article: articleTree,),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                            article: articleTwo,
                              size: size,),
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child:CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child:CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                            article: articleTwo,
                              size: size,),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                              size: size,
                              article: articleOne,),
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child:CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child:CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
                              article: articleTree,
                              size: size,),
                        ),
                      ),
                      Container(
                        height: size.height * .48,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardOtherNotUne(
                            article: articleTree,
                            size: size,),
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
                            article: articleOne,),
                      ),
                      Container(
                        height: size.height * .3,
                        child:CardOtherNotUneSecond(
                            size: size,
                            article: articleTwo,),
                      ),
                      Container(
                        height: size.height * .3,
                        child: CardOtherNotUneSecond(
                            size: size,
                            article: articleTree,),
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
