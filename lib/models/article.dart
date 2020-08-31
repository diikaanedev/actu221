import 'package:flutter/cupertino.dart';

class Article {
  
  int id ;

  String tag ;

  String titre ;

  String body ;

  String urlPhoto ;

  bool isAlaUne ;

  int positionUne ;

  Article({
    @required this.id ,
    @required this.titre ,
    @required this.body,
    @required this.isAlaUne ,
    @required this.positionUne,
    @required this.tag ,
    @required this.urlPhoto,
  });

}