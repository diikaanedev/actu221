import 'package:actu221/data/articles.dart';
import 'package:actu221/screens/home.dart';
import 'package:actu221/widgets/card-other-page.dart';
import 'package:actu221/widgets/input-search.dart';
import 'package:actu221/widgets/titre-text.dart';
import 'package:flutter/material.dart';

class BodyActualite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3),
      child: Column(
        children: [
          Container(
            height: size.height * .13,
            width: size.width,
            color: Colors.orange,
            child: TitreText(
                size: size,
                titre: homeScreenState.screen == 1
                    ? 'Actualité'
                    : homeScreenState.screen == 2
                        ? 'Politique'
                        : homeScreenState.screen == 3
                            ? 'Economique'
                            : homeScreenState.screen == 4
                                ? 'Sport'
                                : homeScreenState.screen == 5
                                    ? 'Société'
                                    : homeScreenState.screen == 6
                                        ? 'Afrique'
                                        : homeScreenState.screen == 7
                                            ? 'Monde'
                                            : homeScreenState.screen == 8
                                                ? 'Investigation'
                                                : homeScreenState.screen == 9
                                                    ? 'Decouverte'
                                                    : 'Entreprenariat'),
          ),
          homeScreenState.screen==1 ? Container(
            height: 85,
            width: size.width * .4,
            // color: Colors.red,
            child: Center(
              child: InputSearch(),
            ),
          ) :Container(),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Container(
              height: homeScreenState.screen == 1 ? size.height * .57 : size.height * .67 ,
              child: GridView.count(
                crossAxisCount: 5,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(32.0),
                childAspectRatio: 1.4,
                children: [
                  CardOtherPage(
                    article: articleOne,
                  ),
                  CardOtherPage(article: articleTwo),
                  CardOtherPage(article: articleTree),
                  CardOtherPage(
                    article: articleOne,
                  ),
                  CardOtherPage(article: articleTwo),
                  CardOtherPage(
                    article: articleOne,
                  ),
                  CardOtherPage(article: articleTwo),
                  CardOtherPage(article: articleTree),
                  CardOtherPage(
                    article: articleOne,
                  ),
                  CardOtherPage(article: articleTwo),
                  CardOtherPage(
                    article: articleOne,
                  ),
                  CardOtherPage(article: articleTwo),
                  CardOtherPage(article: articleTree),
                  CardOtherPage(
                    article: articleOne,
                  ),
                  CardOtherPage(article: articleTwo),
                  CardOtherPage(
                    article: articleOne,
                  ),
                  CardOtherPage(article: articleTwo),
                  CardOtherPage(article: articleTree),
                  CardOtherPage(
                    article: articleOne,
                  ),
                  CardOtherPage(article: articleTwo),
                  CardOtherPage(
                    article: articleOne,
                  ),
                  CardOtherPage(article: articleTwo),
                  CardOtherPage(article: articleTree),
                  CardOtherPage(
                    article: articleOne,
                  ),
                  CardOtherPage(article: articleTwo),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
