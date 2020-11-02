import 'dart:convert';

import 'package:actu221/models/article.dart';
import 'package:actu221/pages/body-actualite.dart';
import 'package:actu221/pages/chargement.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/utils/web.dart';
import 'package:actu221/widgets/app_bar.dart';
import 'package:actu221/pages/body-acceuil.dart';
import 'package:actu221/widgets/breaking-news.dart';
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
  List<Article> listeArticles = [];

  Article articleOneWeb = new Article(
      id: '',
      titre: '',
      body: "",
      isAlaUne: false,
      positionUne: 0,
      tag: '',
      urlPhoto: '',
      allFichier: []);

  Article articleTwoWeb = new Article(
      id: '',
      titre: '',
      body: "",
      isAlaUne: false,
      positionUne: 0,
      tag: '',
      urlPhoto: '',
      allFichier: []);

  Article articleTreeWeb = new Article(
      id: '',
      titre: '',
      body: "",
      isAlaUne: false,
      positionUne: 0,
      tag: '',
      urlPhoto: '',
      allFichier: []);
  Article articleFourWeb = new Article(
      id: '',
      titre: '',
      body: "",
      isAlaUne: false,
      positionUne: 0,
      tag: '',
      urlPhoto: '',
      allFichier: []);
  Article articleFiveWeb = new Article(
      id: '',
      titre: '',
      body: "",
      isAlaUne: false,
      positionUne: 0,
      tag: '',
      urlPhoto: '',
      allFichier: []);

  int screen = -1;

  String categorieTitre = '';

  String search = '';

  bool acceuil_appBar = true;

  bool actualite_appBar = false;

  bool economique_appBar = false;

  bool politique_appBar = false;

  bool sport_appBar = false;

  bool societe_appBar = false;

  bool afrique_appBar = false;

  bool monde_appBar = false;

  @override
  void initState() {
    getApi();
    super.initState();
  }

  Future<List<Article>> getList() async {
    return homeScreenState.listeArticles.reversed.toList();
  }

  void getApi() async {
    UtilsHttp.getByIssa2('posts').then((data) async {
      // print(json.decode(data.body)['data']);
      
      listeArticles = Article.fromJson(json.decode(data.body));

      // Future.delayed(Duration(seconds: 5), () {
      //   homeScreenState.setState(() {
      //     homeScreenState.screen = 0;
      //   });
      // });

      homeScreenState.setState(() {
        homeScreenState.screen = 0;
      });
    });
  }

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
        decoration: BoxDecoration(color: colorSecondaire
            // image: DecorationImage(
            //   image: AssetImage("assets/images/logo221_rouge.png"),
            //   fit: BoxFit.cover,
            // ),
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: size.height * 0.06,
              // color: Colors.red,
              child: CustomAppBar(),
            ),
            Container(
              child: 
              screen == -1 ? buildChardementPage(context):
              screen == 0
                  ? buildAcceuil(context, homeScreenState.listeArticles)
                  : buildBodyActualite(context),
              // color: Colors.blue,
              height: size.height * 0.87,
            ),
            screen == 0 ? Center(
              child: Container(
                height: size.height * 0.06,
                // color: colorPrimaire,
                // width: size.width * .8,
                child: BreakingNews(),
              ),
            ) : Container()
          ],
        ),
      ),
    );
  }
}
