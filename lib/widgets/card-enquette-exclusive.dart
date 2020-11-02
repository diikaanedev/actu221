
import 'package:actu221/widgets/showDecouverte.dart';
import 'package:actu221/widgets/showDialogScandales.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardEnquetteExclusive extends StatelessWidget {
  const CardEnquetteExclusive({
    Key key,
    @required this.size,
    @required this.urlPath, this.view = 0
  }) : super(key: key);

  final Size size;
  final String urlPath;
  final int view ; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (view == 0) {
          showDialogDecouverte();
        } else {
          showDialogScandale();
        }
      },
          child: Container(
        width: size.width * .3,
        //color: Colors.red,
        child: Stack(
          children: [
            Container(
              width: size.width * .3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                          '$urlPath'),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}

