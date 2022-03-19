import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final double screen;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = Colors.blueGrey,
    this.textColor = Colors.white,
    this.screen = 0.9,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          color: Colors.blueGrey,
        ),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40));
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * screen,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: ElevatedButton(
            onPressed: press,
            style: style,
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          )),
    );
  }
}

// FlatButton(
//           padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
//           color: color,
//           onPressed: press,
// child: Text(
//   text,
//   style: TextStyle(color: textColor),
// ),
//         ),
