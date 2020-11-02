import 'package:actu221/models/article.dart';
import 'package:actu221/screens/home.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/card-a-la-une.dart';
import 'package:actu221/widgets/card-enquette-exclusive.dart';
import 'package:actu221/widgets/card-other-not-une-second.dart';
import 'package:actu221/widgets/card-other-not-une.dart';
import 'package:actu221/widgets/card-other-une.dart';
import 'package:actu221/widgets/titre-text.dart';
import 'package:flutter/material.dart';

Widget buildAcceuil(BuildContext context, List<Article> liste) {
  List<Article> reversedListe = liste.length == 0 ? [] : liste;

  List<Article> listeActualite = liste.take(8).toList();

  List<Article> listeDossierRedaction = liste.take(3).toList();

  print('listeActualite => $listeActualite');
  homeScreenState.setState(() {
    homeScreenState.articleOneWeb = reversedListe.length > 0
        ? reversedListe.firstWhere(
            (element) => element.isAlaUne && element.positionUne == 1)
        : homeScreenState.articleOneWeb;
    homeScreenState.articleTwoWeb = reversedListe.length > 0
        ? reversedListe.firstWhere(
            (element) => element.isAlaUne && element.positionUne == 2)
        : homeScreenState.articleOneWeb;
    homeScreenState.articleTreeWeb = reversedListe.length > 0
        ? reversedListe.firstWhere(
            (element) => element.isAlaUne && element.positionUne == 3)
        : homeScreenState.articleOneWeb;
    homeScreenState.articleFourWeb = reversedListe.length > 0
        ? reversedListe.firstWhere(
            (element) => element.isAlaUne && element.positionUne == 4)
        : homeScreenState.articleOneWeb;
    homeScreenState.articleFiveWeb = reversedListe.length > 0
        ? reversedListe.firstWhere(
            (element) => element.isAlaUne && element.positionUne == 5)
        : homeScreenState.articleOneWeb;
  });
  Size size = MediaQuery.of(context).size;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: ListView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Container(
          // color: Colors.blue,
          height: size.height * 0.65,
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
                      // color: Colors.cyan,1
                      child: CardOtherUne(
                          size: size, article: homeScreenState.articleTwoWeb),
                    ),
                    Spacer(),
                    Container(
                      height: size.height * 0.28,
                      // color: Colors.blue,1
                      child: CardOtherUne(
                        size: size,
                        article: homeScreenState.articleTreeWeb,
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
                article: homeScreenState.articleOneWeb,
              ),
              Spacer(
                flex: 1,
              ),
              Container(
                height: size.height * 0.6,
                width: size.width * 0.2 - 5,
                // color: Colors.green,
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.28,
                      // color: Colors.cyan,1
                      child: CardOtherUne(
                        size: size,
                        article: homeScreenState.articleFourWeb,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: size.height * 0.28,
                      // color: Colors.orange,1
                      child: CardOtherUne(
                        size: size,
                        article: homeScreenState.articleFiveWeb,
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
          height: size.height * .07,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitreText(
                size: size,
                titre: 'Découverte',
                screen: 8,
              ),
              TitreText(
                size: size,
                titre: 'Scandales',
                screen: 16,
              ),
              TitreText(
                size: size,
                titre: 'Contribution',
                screen: 17,
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
                view: 1,
              ),
              CardEnquetteExclusive(
                size: size,
                urlPath: 'assets/images/exclusive.jpeg',
                view: 1,
              ),
            ],
          ),
        ),
        Container(
          height: 75,
          child: TitreText(size: size, titre: 'ACTUALITÉS' ,screen: 10,),
        ),
        Container(
          // color: Colors.green,
          height: size.height,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listeActualiteWidget(size, listeActualite),
          ),
        ),
        voirPlusWidget(size, 2),
        separation10(),
        separationWidget(size),
        Container(
          height: 75,
          child: TitreText(size: size, titre: 'Dossier de la RÉDACTION' , screen: 13,),
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
                          article: listeDossierRedaction[0],
                        ),
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
                          article: listeDossierRedaction[1],
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
                          article: listeDossierRedaction[2],
                        ),
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
        separation10(),
        voirPlusWidget(size, 2),
        separation10(),
        separationWidget(size),
        Container(
          height: 75,
          child: TitreText(size: size, titre: 'POLITIQUE' , screen: 2, ),
        ),
        Container(
          // color: Colors.green,
          height: size.height,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listeActualiteWidget(size, listeActualite),
          ),
        ),
        voirPlusWidget(size, 2),
        separation10(),
        separationWidget(size),
        Container(
          height: 75,
          child: TitreText(size: size, titre: 'ECONOMIE', screen: 3,),
        ),
        Container(
          // color: Colors.green,
          height: size.height,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listeActualiteWidget(size, listeActualite),
          ),
        ),
        voirPlusWidget(size, 3),
        separation10(),
        separationWidget(size),
        Container(
          height: 75,
          child: TitreText(size: size, titre: 'SPORT' , screen: 4),
        ),
        Container(
          // color: Colors.green,
          height: size.height,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listeActualiteWidget(size, listeActualite),
          ),
        ),
        voirPlusWidget(size, 4),
        separation10(),
        separationWidget(size),
        Container(
          height: 75,
          child: TitreText(size: size, titre: 'SOCIETE' , screen:5 , ),
        ),
        Container(
          // color: Colors.green,
          height: size.height,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listeActualiteWidget(size, listeActualite),
          ),
        ),
        voirPlusWidget(size, 5),
        separation10(),
        separationWidget(size),
        Container(
          height: 75,
          child: TitreText(size: size, titre: 'Ressource du Sénégal' , screen: 14, ),
        ),
        Container(
          // color: Colors.green,
          height: size.height,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listeActualiteWidget(size, listeActualite),
          ),
        ),
        voirPlusWidget(size, 4),
        separation10(),
        separationWidget(size),
        Container(
          height: 75,
          child: TitreText(size: size, titre: 'SOCIÉTÉ' , screen: 5, ),
        ),
        Container(
          // color: Colors.green,
          height: size.height,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listeActualiteWidget(size, listeActualite),
          ),
        ),
        voirPlusWidget(size, 5),
        separation10(),
        separationWidget(size),
        Container(
          height: 75,
          child: TitreText(size: size, titre: 'afrique' , screen: 6, ),
        ),
        Container(
          // color: Colors.green,
          height: size.height,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listeActualiteWidget(size, listeActualite),
          ),
        ),
        voirPlusWidget(size, 6),
        separation10(),
        separationWidget(size),
        Container(
          height: 75,
          child: TitreText(size: size, titre: 'technologie' , screen: 15, ),
        ),
        Container(
          // color: Colors.green,
          height: size.height,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listeActualiteWidget(size, listeActualite),
          ),
        ),
        voirPlusWidget(size, 7),
        separation10(),
        separationWidget(size),
        Container(
          height: 75,
          child: TitreText(size: size, titre: 'monde' ,screen: 7, ),
        ),
        Container(
          // color: Colors.green,
          height: size.height,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listeActualiteWidget(size, listeActualite),
          ),
        ),
        voirPlusWidget(size, 8),
        separation10(),
        separationWidget(size),
        SizedBox(
          height: 50,
        ),
        Container(
            height: size.height * .07, width: size.width, color: colorPrimaire)
      ],
    ),
  );
}

List<Widget> listeActualiteWidget(Size size, List<Article> liste) {
  List<Widget> l_result = [];

  l_result.add(
    Container(
      height: size.height,
      width: size.width * .25,
      // color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: firts_or_container(size, liste, 1),
      ),
    ),
  );
  l_result.add(
    Container(
      height: size.height,
      width: size.width * .45,
      // color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: second_container(size, liste),
      ),
    ),
  );
  l_result.add(
    Container(
      height: size.height,
      width: size.width * .25,
      // color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: firts_or_container(size, liste, 2),
      ),
    ),
  );

  return l_result;
}

List<Widget> firts_or_container(Size size, List<Article> liste, int n) {
  List<Widget> l = [];

  switch (n) {
    case 1:
      for (var i = 0; i < 3; i++) {
        l.add(Container(
          height: size.height * .3,
          child: CardOtherNotUneSecond(
            size: size,
            article: liste[i],
          ),
        ));
      }
      break;
    case 2:
      for (var i = 5; i < 8; i++) {
        l.add(Container(
          height: size.height * .3,
          child: CardOtherNotUneSecond(
            size: size,
            article: liste[i],
          ),
        ));
      }
      break;
    default:
  }

  return l;
}

List<Widget> second_container(Size size, List<Article> liste) {
  List<Widget> l = [];

  for (var i = 3; i < 5; i++) {
    l.add(Container(
      height: size.height * .48,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CardOtherNotUne(
          size: size,
          article: liste[i],
        ),
      ),
    ));
  }

  return l;
}

Widget voirPlusWidget(Size size, int screen) => Container(
      height: 45,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: size.width * .07,
            height: 45,
            decoration: BoxDecoration(
                color: colorPrimaire, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'Voir Plus',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );

Widget separationWidget(Size size) => Container(
      height: 0.2,
      width: size.width,
      color: colorPrimaire,
    );
Widget separation10() => SizedBox(
      height: 10,
    );
