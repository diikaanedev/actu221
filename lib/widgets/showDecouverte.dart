import 'package:actu221/screens/home.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/titre-text.dart';
import 'package:flutter/material.dart';

showDialogDecouverte() {
  Size size = MediaQuery.of(myGlobals.scaffoldKey.currentContext).size;
  return showDialog(
      context: myGlobals.scaffoldKey.currentContext,
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: TitreText(size: size, titre: "Decouverte de kelkun"),
        content: Container(
            height: size.height * 0.9,
            width: size.width * 0.6,
            color: colorSecondaire,
            child: Row(
              children: [
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.4,
                  // color: Colors.blue,
                  child: Column(
                    children: [
                      Container(
                        height: size.height * .55,
                        width: size.width * .4,
                        color: Colors.red,
                        child: Center(child: Text('Photo' , textAlign: TextAlign.center,)),
                      ),
                      Container(
                        height: size.height * .23,
                        width: size.width * .4,
                        color: Colors.amber,
                        child: Center(child: Text('Biographie' , textAlign: TextAlign.center,)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.19,
                  // color: Colors.cyan,
                  child: Column(
                    children: [
                      Container(
                        height: size.height * .55,
                        width: size.width * 0.19,
                        color: Colors.blue,
                        child: Center(child: Text('Donnes Civile' , textAlign: TextAlign.center,)),

                      ),
                      Container(
                        height: size.height * .23,
                        width: size.width * 0.19,
                        color: Colors.blueGrey,
                        child: Center(child: Text('link video' , textAlign: TextAlign.center,)),

                      ),
                    ],
                  ),
                )
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
