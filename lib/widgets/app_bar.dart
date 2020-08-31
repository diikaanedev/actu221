import 'package:actu221/widgets/default_button.dart';
import 'package:flutter/material.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
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
          Card(
            elevation: 2,
            child: Container(
              width: 200,
              height: 100,
              // color: Colors.blue,
              child: Center(
                child: Image.asset(
                  "assets/images/logo_solgan.png",
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
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
            press: () {},
          ),
          MenuItem(
            title: "Actualités",
            press: () {},
          ),
          MenuItem(
            title: "Politique",
            press: () {},
          ),
          MenuItem(
            title: "Economique",
            press: () {},
          ),
          MenuItem(
            title: "Société",
            press: () {},
          ),
          MenuItem(
            title: "Afrique",
            press: () {},
          ),
          MenuItem(
            title: "Monde",
            press: () {},
          ),
          DefaultButton(
            text: "Investigation",
            press: () {},
            color: Color.fromRGBO(179, 0, 20, 1),
          ),
          DefaultButton(
            color: Color.fromRGBO(255, 248, 240, 1),
            text: "Decouverte ",
            press: () {},
          ),
          DefaultButton(
            text: "Entreprenariat",
            color: Color.fromRGBO(255, 220, 27, 1),
            press: () {},
          ),
        ],
      ),
    );
  }
}
