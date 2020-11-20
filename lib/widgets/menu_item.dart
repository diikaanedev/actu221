import 'package:actu221/utils/constant.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;
  final bool actif;
  const MenuItem({
    Key key,
    this.title,
    this.actif,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: size.height * .01,
            ),
            Container(
              child: Text(
                title.toUpperCase(),
                style: TextStyle(
                  color: colorPrimaire.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            if (actif)
              Container(
                height: 2,
                width: 100,
                color: colorPrimaire,
              )
            else
              Container(),
          ],
        ),
      ),
    );
  }
}

class MenuItemLatop1024 extends StatelessWidget {
  final String title;
  final Function press;
  final bool actif;
  const MenuItemLatop1024({
    Key key,
    this.title,
    this.actif,
    this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: size.height * .02,
            ),
            Container(
              child: Text(
                title.toUpperCase(),
                style: TextStyle(
                  color: colorPrimaire.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            if (actif)
              Container(
                height: 2,
                width: 100,
                color: colorPrimaire,
              )
            else
              Container(),
          ],
        ),
      ),
    );
  }
}
