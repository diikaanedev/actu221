import 'package:actu221/models/article.dart';
import 'package:flutter/cupertino.dart';

class Tag {
  
  int id ;

  String libelle ;

  List<Article> articles ;

  Tag({
    @required this.id,
    @required this.libelle,
    @required this.articles
  });

}