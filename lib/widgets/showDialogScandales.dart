import 'package:actu221/screens/home.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/card-scadale.dart';
import 'package:actu221/widgets/titre-text.dart';
import 'package:flutter/material.dart';

showDialogScandale() {
  Size size = MediaQuery.of(myGlobals.scaffoldKey.currentContext).size;
  return showDialog(
      context: myGlobals.scaffoldKey.currentContext,
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: TitreText(size: size, titre: "Decouverte de Scandales"),
        content: Container(
            height: size.height * 0.9,
            width: size.width * 0.6,
            color: colorSecondaire,
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                cardScandale(scandale: 'assets/images/1.jpg',),
                cardScandale(scandale: 'assets/images/2.jpg',),
                cardScandale(scandale: 'assets/images/3.jpg',),
                cardScandale(scandale: 'assets/images/4.jpg',),
                cardScandale(scandale: 'assets/images/5.jpg',),
                cardScandale(scandale: 'assets/images/6.jpg',),
                cardScandale(scandale: 'assets/images/7.jpg',),
                cardScandale(scandale: 'assets/images/8.jpg',),
                cardScandale(scandale: 'assets/images/9.jpg',),
                cardScandale(scandale: 'assets/images/10.jpg',),
                cardScandale(scandale: 'assets/images/11.jpg',),
                cardScandale(scandale: 'assets/images/12.jpg',),
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


