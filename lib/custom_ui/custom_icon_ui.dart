import 'package:ecomm_239/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomIconUI extends StatelessWidget {
  double mWidth;
  double mHeight;
  Color? bgColor;
  Color? fgColor;
  IconData? mIcon;
  String? imgPath;

  CustomIconUI({this.mIcon, this.imgPath, this.mWidth = 40, this.mHeight = 40, this.bgColor, this.fgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mWidth,
      height: mHeight,
      decoration: BoxDecoration(
        color: bgColor ?? AppColors.lightGreyColor,
        shape: BoxShape.circle
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: mIcon!=null ? Icon(mIcon, color: fgColor ?? AppColors.blackColor,) : Image.asset(imgPath!),
      ),
    );
  }
}
