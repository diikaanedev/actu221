import 'package:actu221/models/article.dart';
import 'package:actu221/screens/home.dart';
import 'package:actu221/widgets/card-other-page.dart';
import 'package:actu221/widgets/input-search.dart';
import 'package:actu221/widgets/titre-text.dart';
import 'package:flutter/material.dart';

Widget buildBodyActualite(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  List<Article> liste = [];
  switch (homeScreenState.screen) {
    case 2:
      liste = homeScreenState.listeArticles
          .where((element) => element.tag.toLowerCase() == 'politique')
          .toList();
      break;
    case 3:
      liste = homeScreenState.listeArticles
          .where((element) => element.tag.toLowerCase() == 'economie')
          .toList();
      break;
    case 4:
      liste = homeScreenState.listeArticles
          .where((element) => element.tag.toLowerCase() == 'sport')
          .toList();
      break;
    case 5:
      liste = homeScreenState.listeArticles
          .where((element) => element.tag.toLowerCase() == 'société')
          .toList();
      break;
    case 6:
      liste = homeScreenState.listeArticles
          .where((element) => element.tag.toLowerCase() == 'afrique')
          .toList();
      break;
    case 7:
      liste = homeScreenState.listeArticles
          .where((element) => element.tag.toLowerCase() == 'monde')
          .toList();
      break;
    case 7:
      liste = homeScreenState.listeArticles
          .where((element) => element.tag.toLowerCase() == 'investigation')
          .toList();
      break;
    case 8:
      liste = homeScreenState.listeArticles
          .where((element) => element.tag.toLowerCase() == 'decouverte')
          .toList();
      break;
    case 9:
      liste = homeScreenState.listeArticles
          .where((element) => element.tag.toLowerCase() == 'entreprenariat')
          .toList();
      break;
    case 10:
      liste = homeScreenState.listeArticles
          .where((element) => element.tag.toLowerCase() == 'actualites')
          .toList();
      break;
    case 16:
      liste = homeScreenState.listeArticles
          .where((element) => element.tag.toLowerCase() == 'scandales')
          .toList();
      break;
    case 17:
      liste = homeScreenState.listeArticles
          .where((element) => element.tag.toLowerCase() == 'contribution')
          .toList();
      break;
    default:
      liste = homeScreenState.listeArticles
          .where((element) =>
              element.tag.toLowerCase() ==
              homeScreenState.categorieTitre.toLowerCase())
          .toList();
      break;
  }
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 3),
    child: Column(
      children: [
        homeScreenState.screen == 1
            ? Container(
                height: size.height * 0.13,
                width: size.width,
                child: Image.asset(
                  'assets/images/actualite_baniere.jpg',
                  fit: BoxFit.cover,
                ),
              )
            : Container(
                height: size.height * .13,
                width: size.width,
                color: Colors.orange,
                child: TitreText(
                    size: size,
                    titre: homeScreenState.screen == 2
                        ? 'Politique'
                        : homeScreenState.screen == 3
                            ? 'Economie'
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
                                                    : homeScreenState.screen ==
                                                            10
                                                        ? 'Entreprenariat'
                                                        : homeScreenState
                                                            .categorieTitre),
              ),
        homeScreenState.screen == 1
            ? Container(
                height: 80,
                width: size.width * .4,
                // color: Colors.red,
                child: Center(
                  child: InputSearch(),
                ),
              )
            : Container(),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Container(
            height: homeScreenState.screen == 1
                ? size.height * .50
                : size.height * .60,
            child: GridView.count(
              crossAxisCount: 5,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(32.0),
              childAspectRatio: 1.4,
              children: getAllActuCategorie(liste),
            ),
          ),
        )
      ],
    ),
  );
}

List<Widget> getAllActuCategorie(List<Article> liste) {
  List<Widget> l = [];
  for (var item in liste) {
    l.add(CardOtherPage(article: item));
  }
  return l;
}
