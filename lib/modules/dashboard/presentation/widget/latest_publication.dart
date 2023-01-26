import 'package:flutter/material.dart';
import 'package:land_gov_flutter/utils/app_color.dart';
import 'package:land_gov_flutter/utils/app_layout.dart';
import 'package:land_gov_flutter/utils/app_string.dart';
import 'package:land_gov_flutter/utils/app_style.dart';
import 'dart:math' as math;

Widget latestPublication() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(6)),
    child: _publicationBody(),
  );
}

_publicationBody() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        decoration: BoxDecoration(
            color: AppColor.custom_blue,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6), topRight: Radius.circular(6))),
        padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(8),
            horizontal: AppLayout.getWidth(12)),
        width: double.maxFinite,
        child: Text(AppString.recent_publication, style: AppStyle.large_text),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(8),
            horizontal: AppLayout.getWidth(12)),
        child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) => Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: Icon(
                  Icons.gavel,
                ),
              ),
              SizedBox(
                width: AppLayout.getWidth(8),
              ),
              Expanded(
                child: Text(
                  "অর্পিত সম্পত্তি প্রত্যর্পণ (দ্বিতীয় সংশোধন) আইন, ২০১৩ জারি হওয়ার পর বাতিলকৃত ‘খ’ তফসিলভূক্ত সম্পত্তির দাবীদারগণের আবেদন দাখিলের সময়সীমা বর্ধিতকরণ-২৫০",
                  overflow: TextOverflow.ellipsis,
                  style: AppStyle.normal_text,
                ),
              )
            ],
          ),
          separatorBuilder: (context, index) => SizedBox(
            height: AppLayout.getHeight(4),
          ),
        ),
      ),
    ],
  );
}
