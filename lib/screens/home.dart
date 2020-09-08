import 'package:actu221/pages/body-actualite.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/app_bar.dart';
import 'package:actu221/pages/body-acceuil.dart';
import 'package:flutter/material.dart';

MyGlobals myGlobals = MyGlobals();
class MyGlobals {
  GlobalKey _scaffoldKey;
  MyGlobals() {
    _scaffoldKey = GlobalKey();
  }
  GlobalKey get scaffoldKey => _scaffoldKey;
}
_HomeScreenState homeScreenState;
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() {
    homeScreenState = _HomeScreenState();
    return homeScreenState;
  }
}

class _HomeScreenState extends State<HomeScreen> {

  int screen = 0 ;

  String search ='';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      key: myGlobals.scaffoldKey,
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
              child: screen==0 ? BodyAcceuil() : BodyActualite(),
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
