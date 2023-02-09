import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:land_gov_flutter/utils/app_color.dart';
import 'package:land_gov_flutter/utils/app_layout.dart';
import 'package:land_gov_flutter/utils/app_style.dart';

import '../utils/app_string.dart';

class CustomAppbarInner extends StatelessWidget implements PreferredSizeWidget {
  final String appbarTitle;

  CustomAppbarInner({required this.appbarTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.custom_blue,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/govLogo.png", height: 32, width: 32),
          SizedBox(width: AppLayout.getWidth(8)),
          Text(
            appbarTitle,
            style: AppStyle.title_text,
          ),
        ],
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () => Get.back(),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.maxFinite, AppLayout.getHeight(56));
}
