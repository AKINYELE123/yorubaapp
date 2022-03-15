import 'package:flutter/material.dart';

class SelectButton extends StatelessWidget {
  const SelectButton({
    Key? key,
    required this.borderColor,
    required this.borderBackground,
    required this.headerText,
    required this.subText,
    required this.icon,
    required this.iconColor,
    required this.iconBorderColor, required this.textColor,
  }) : super(key: key);

  final Color borderColor;
  final Color borderBackground;
  final headerText;
  final subText;
  final icon;
  final Color iconColor;
  final Color iconBorderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 100,
      padding: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 4.0),
          borderRadius: BorderRadius.circular(15),
          color: borderBackground),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("asset/images/head.png"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headerText,
                style: TextStyle(color: textColor, fontSize: 18),
              ),
              Text(
                subText,
                style: TextStyle(color: textColor, fontSize: 16),
              ),
            ],
          ),

          Container(
              decoration: BoxDecoration(
                  color: iconBorderColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Icon(
                icon,
                color: iconColor,
              ))
        ],
      ),
    );
  }
}
