import 'package:flutter/material.dart';
import 'package:land_gov_flutter/utils/app_string.dart';
import 'package:land_gov_flutter/utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 1,
      cursorColor: Colors.black,
      decoration:
          InputDecoration(hintText: hintText, hintStyle: AppStyle.small_text),
    );
  }
}
