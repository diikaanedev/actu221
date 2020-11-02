import 'package:actu221/screens/home.dart';
import 'package:actu221/widgets/default_button.dart';
import 'package:flutter/material.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  resetAppBarUnderline() {
    homeScreenState.setState(() {
      homeScreenState.acceuil_appBar = false;
      homeScreenState.actualite_appBar = false;
      homeScreenState.politique_appBar = false;
      homeScreenState.economique_appBar = false;
      homeScreenState.sport_appBar = false;
      homeScreenState.societe_appBar = false;
      homeScreenState.afrique_appBar = false;
      homeScreenState.monde_appBar = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -1),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: () => homeScreenState.setState(() {
              homeScreenState.screen = 0;
            }),
            child: Card(
              elevation: 2,
              child: Container(
                width: MediaQuery.of(context).size.width * .1,
                // height: 50,
                // color: Colors.blue,
                child: Center(
                  child: Image.asset(
                    "assets/images/logo_solgan.png",
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
          ),
          //SizedBox(width: 5),
          // Text(
          //   "Actu221".toUpperCase(),
          //   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          // ),
          Spacer(),
          MenuItem(
            title: "Acceuil",
            actif: homeScreenState.acceuil_appBar,
            press: () {
              homeScreenState.setState(() {
                homeScreenState.screen = 0;
                resetAppBarUnderline();
                homeScreenState.acceuil_appBar = true;
              });
            },
          ),
          MenuItem(
            title: "Actualités",
            actif: homeScreenState.actualite_appBar,
            press: () {
              homeScreenState.setState(() {
                homeScreenState.screen = 1;
                resetAppBarUnderline();
                homeScreenState.actualite_appBar = true;
              });
            },
          ),
          MenuItem(
            title: "Politique",
            actif: homeScreenState.politique_appBar,
            press: () {
              homeScreenState.setState(() {
                homeScreenState.screen = 2;
                resetAppBarUnderline();
                homeScreenState.politique_appBar = true;
              });
            },
          ),
          MenuItem(
            actif: homeScreenState.economique_appBar,
            title: "Economie",
            press: () {
              homeScreenState.setState(() {
                homeScreenState.screen = 3;
                resetAppBarUnderline();
                homeScreenState.economique_appBar = true;
              });
            },
          ),
          MenuItem(
            actif: homeScreenState.sport_appBar,
            title: "Sport",
            press: () {
              homeScreenState.setState(() {
                homeScreenState.screen = 4;
                resetAppBarUnderline();
                homeScreenState.sport_appBar = true;
              });
            },
          ),
          MenuItem(
            actif: homeScreenState.societe_appBar,
            title: "Société",
            press: () {
              homeScreenState.setState(() {
                homeScreenState.screen = 5;
                resetAppBarUnderline();
                homeScreenState.societe_appBar = true;
              });
            },
          ),
          MenuItem(
            actif: homeScreenState.afrique_appBar,
            title: "Afrique",
            press: () {
              homeScreenState.setState(() {
                homeScreenState.screen = 6;
                resetAppBarUnderline();
                homeScreenState.afrique_appBar = true;
              });
            },
          ),
          MenuItem(
            actif: homeScreenState.monde_appBar,
            title: "Monde",
            press: () {
              homeScreenState.setState(() {
                homeScreenState.screen = 7;
                resetAppBarUnderline();
                homeScreenState.monde_appBar = true;
              });
            },
          ),
          DefaultButton(
            text: "Investigation",
            press: () {
              homeScreenState.setState(() {
                homeScreenState.screen = 8;
              });
            },
            color: Color.fromRGBO(179, 0, 20, 1),
          ),
          DefaultButton(
            color: Color.fromRGBO(255, 248, 240, 1),
            text: "Decouverte ",
            press: () {
              homeScreenState.setState(() {
                homeScreenState.screen = 9;
              });
            },
          ),
          DefaultButton(
            text: "Entreprenariat",
            color: Color.fromRGBO(255, 220, 27, 1),
            press: () {
              homeScreenState.setState(() {
                homeScreenState.screen = 10;
              });
            },
          ),
        ],
      ),
    );
  }
}
