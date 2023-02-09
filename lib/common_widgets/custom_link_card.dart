import 'package:flutter/material.dart';
import 'package:land_gov_flutter/utils/app_layout.dart';
import 'package:land_gov_flutter/utils/app_style.dart';

class CustomLinkCard extends StatelessWidget {
  final String linkImageUrl;
  final String linkText;

  CustomLinkCard({
    required this.linkImageUrl,
    required this.linkText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _linkImage(),
        _linkText(),
      ],
    );
  }

  _linkImage() {
    return Image.asset(
      linkImageUrl,
      fit: BoxFit.fill,
      height: AppLayout.getHeight(60),
      width: AppLayout.getWidth(60),
    );
  }

  _linkText() {
    return Text(
      linkText,
      textAlign: TextAlign.center,
      style: AppStyle.normal_text,
    );
  }
}
