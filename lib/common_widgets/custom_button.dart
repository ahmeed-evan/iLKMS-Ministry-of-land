import 'package:flutter/material.dart';
import 'package:land_gov_flutter/utils/app_color.dart';
import 'package:land_gov_flutter/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;

  CustomButton({
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          buttonText,
          style: AppStyle.button_text.copyWith(color: textColor),
        ),
        style: OutlinedButton.styleFrom(
            side: BorderSide(width: 1.0, color: AppColor.custom_blue),
            backgroundColor: buttonColor),
      ),
    );
  }
}
