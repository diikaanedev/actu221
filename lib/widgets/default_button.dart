import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color ;
  const DefaultButton({
    Key key,
    this.text,
    this.press,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          color: color,
          onPressed: press,
          child: Text(
            text.toUpperCase(),
          ),
        ),
      ),
    );
  }
}
