import 'package:actu221/models/article.dart';
import 'package:actu221/utils/constant.dart';
import 'package:actu221/widgets/show-dialog-article.dart';
import 'package:flutter/material.dart';

class CardOtherPage extends StatelessWidget {
  final Article article;
  const CardOtherPage({@required this.article});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () =>  showDialogArtile(size: size, article: article, context: context),
            child: Container(
          width: size.width * .18,
          height: size.height * .22,
          decoration: BoxDecoration(
              // color: colorPrimaire,
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage(article.urlPhoto), fit: BoxFit.cover)),
          child: Stack(
            children: [
              Container(
                width: size.width * .18,
                height: size.height * .22,
              ),
              Positioned(
                  top: size.height * .16,
                  left: size.width * .015,
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width * .15,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 248, 240, 1),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Center(
                      child: Text(
                        article.titre,
                        style: TextStyle(
                            color: colorPrimaire,
                            fontWeight: FontWeight.bold,
                            fontSize: 9),
                      ),
                    ),
                  )),
              Positioned(
                  top: size.height * .145,
                  left: size.width * .014,
                  child: Container(
                    height: size.height * 0.03,
                    width: size.width * .07,
                    color: colorPrimaire,
                    child: Center(
                      child: Text(
                        article.tag,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
