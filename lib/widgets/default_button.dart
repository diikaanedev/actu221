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
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
