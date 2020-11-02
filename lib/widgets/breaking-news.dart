import 'dart:js';

import 'package:actu221/models/article.dart';
import 'package:actu221/screens/home.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/show-dialog-article.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BreakingNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.06,

        // color: colorPrimaire,
        width: size.width,
        child: CarouselSlider(
          options: CarouselOptions(
            // disableCenter: true,
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: homeScreenState.listeArticles
              .map((item) => breakingNewArticle(context, item))
              .toList(),
        ));
  }
}

Widget breakingNewArticle(BuildContext context, Article article) {
  Size size = MediaQuery.of(context).size;
  return GestureDetector(
    // onTap: () =>
    //     showDialogArtile(context: context, article: article, size: size),
    child: Container(
      width: size.width,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.06,

            // color: colorPrimaire,
            width: size.width,
          ),
          Positioned(
            left: size.width * .2,
            height: size.height * 0.06,
            child: Container(
              width: size.width * .4,
              child: Card(
                color: colorPrimaire,
                child: Center(
                  child: Text(article.titre,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            child: Container(
              width: size.width * .25,
              height: size.height * 0.04,
              // color: Colors.blue,
              child: Card(
                elevation: 2,
                child: Center(
                  child: Text(article.tag,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
