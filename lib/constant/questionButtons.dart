import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  final Color color;
  String text;
  final Color background;
  final Color textColor;
  //double size;
  final Color borderColor;
  bool? isIcon;

  QuestionButton(
      {Key? key,
        this.isIcon=false,
        required this.text,
        //required this.size,
        required this.color,
        required this.textColor,
        required this.background,
        required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.0),
        borderRadius: BorderRadius.circular(10),
        color: background,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(child: Text(text, style: TextStyle(color: textColor, fontSize: 15, fontWeight: FontWeight.w800),)),
    );
  }
}