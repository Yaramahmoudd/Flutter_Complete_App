
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';
class CustomMainButton extends StatelessWidget {
  CustomMainButton ({this.onTap, required this.text});
  VoidCallback? onTap;
  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.mainBlue,
          borderRadius: BorderRadius.circular(17),
        ),
        width: double.infinity,
        height: 50,
        child: Center(
            child: Text(
          text,
          style: TextStyles.font16WhiteMedium,
      ),
      )));
  }
}
