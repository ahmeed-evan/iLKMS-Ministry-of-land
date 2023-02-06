import 'package:flutter/material.dart';
import 'package:land_gov_flutter/utils/app_style.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icondata;
  final String? labelText;
  final Color? color;

  CustomIconButton(
      {required this.icondata,
      this.labelText = "",
      this.color = Colors.blueAccent});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Icon(icondata, color: color),
      label: Text(
        labelText!,
        style: AppStyle.small_text.copyWith(color: color),
      ),
      onPressed: () {},
    );
  }
}
