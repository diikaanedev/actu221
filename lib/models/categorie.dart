import 'package:actu221/models/tag.dart';
import 'package:flutter/cupertino.dart';

class Categorie {
  
  int id ;

  String libelle ;

  List<Tag> tags ;

  Categorie({
    @required this.id ,
    @required this.libelle,
    @required this.tags
  });

}