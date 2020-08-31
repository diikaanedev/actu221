import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/app_bar.dart';
import 'package:actu221/widgets/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      body: Container(
        height: size.height,
        // it will take full width
        width: size.width,
        decoration: BoxDecoration(
          color: colorSecondaire
          // image: DecorationImage(
          //   image: AssetImage("assets/images/logo221_rouge.png"),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: size.height * 0.12,
              child: CustomAppBar(),
            ),
            Spacer(),
            // It will cover 1/3 of free spaces
            Container(
              child: Body(),
              height: size.height * 0.8,
            ),
            Spacer(
              flex: 2,
            ),
            // it will cover 2/3 of free spaces
          ],
        ),
      ),
    );
  }
}
