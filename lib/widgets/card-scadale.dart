import 'package:flutter/material.dart';

class cardScandale extends StatelessWidget {
  const cardScandale({
    Key key,
    @required this.scandale 
  }) : super(key: key);


  final String scandale ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: size.height * .4,
        width: size.width * .2,
        // color: Colors.blueGrey,
        child: Image.asset(scandale , fit: BoxFit.cover,),
      ),
    );
  }
}