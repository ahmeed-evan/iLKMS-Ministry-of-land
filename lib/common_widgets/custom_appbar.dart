import 'package:flutter/material.dart';
import 'package:land_gov_flutter/utils/app_color.dart';
import 'package:land_gov_flutter/utils/app_layout.dart';
import 'package:land_gov_flutter/utils/app_string.dart';
import 'package:land_gov_flutter/utils/app_style.dart';

import '../utils/app_string.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String appbarTitle;

  CustomAppbar({required this.appbarTitle});

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
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.maxFinite, AppLayout.getHeight(56));
}
