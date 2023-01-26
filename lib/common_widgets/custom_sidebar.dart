import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:land_gov_flutter/common_widgets/custom_icon_button.dart';
import 'package:land_gov_flutter/utils/app_color.dart';
import 'package:land_gov_flutter/utils/app_layout.dart';
import 'package:land_gov_flutter/utils/app_string.dart';
import 'package:land_gov_flutter/utils/app_style.dart';

class CustomSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.bg_color,
        ),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _headerSection(context),
              _bottomSection(),
              Flexible(fit: FlexFit.loose, child: _developerSection())
            ],
          ),
        ),
      ),
    );
  }

  _headerSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: AppLayout.getSize(context).height * .35,
      decoration: BoxDecoration(color: AppColor.custom_blue),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(40),
            horizontal: AppLayout.getWidth(20)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(flex: 2),
                _profilePicture(),
                const Spacer(flex: 1),
                IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.close))
              ],
            ),
          ),
          SizedBox(height: AppLayout.getHeight(20)),
          Center(
            child: _emailAddress(),
          )
        ]),
      ),
    );
  }

  _profilePicture() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        "assets/pro_pic.png",
        height: 90.0,
        width: 90.0,
      ),
    );
  }

  _emailAddress() {
    return Text(
      "Email: dummy-test@gmail.com",
      style: AppStyle.normal_text,
    );
  }

  _bottomSection() {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(40),
          horizontal: AppLayout.getWidth(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleText(),
          _enameJari(),
          _landTax(),
          _landRecord(),
          _law(),
          _helpLine(),
        ],
      ),
    );
  }

  _titleText() {
    return Text(AppString.service_link_text, style: AppStyle.title_text);
  }

  _enameJari() {
    return CustomIconButton(
      icondata: Icons.computer,
      color: Colors.black,
      labelText: "ই-নামজারি",
    );
  }

  _landTax() {
    return CustomIconButton(
      icondata: Icons.landslide,
      color: Colors.black,
      labelText: "ভূমি উন্নয়ন কর",
    );
  }

  _landRecord() {
    return CustomIconButton(
      icondata: Icons.park,
      color: Colors.black,
      labelText: "ডিজিটাল ল্যান্ড রেকর্ড",
    );
  }

  _law() {
    return CustomIconButton(
      icondata: Icons.receipt_long_outlined,
      color: Colors.black,
      labelText: "অনলাইন শুনানি",
    );
  }

  _helpLine() {
    return CustomIconButton(
      icondata: Icons.call_outlined,
      color: Colors.black,
      labelText: "সহায়তা কেন্দ্র",
    );
  }

  _developerSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "System Development",
          style: AppStyle.small_text,
        ),
        Image.asset("assets/dream71logo.png", height: 30),
      ],
    );
  }
}
