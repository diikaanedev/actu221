import 'package:actu221/widgets/input-search.dart';
import 'package:flutter/material.dart';

class BodyActualite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:3 ),
      child: Column(
        children: [
          Container(
            height: size.height * .13,
            color: Colors.orange,
          ),
          Container(
            height: 85,
            width: size.width * .4,
            // color: Colors.red,
            child: Center(
              child: InputSearch(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0 , right: 16.0),
            child: Container(
              height: size.height * .57,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Container(
                    height: size.height * .22,
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: size.height * .22,
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: size.height * .22,
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: size.height * .22,
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                        Container(
                          width: size.width * .18,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
