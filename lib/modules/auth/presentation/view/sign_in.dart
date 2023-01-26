import 'package:flutter/material.dart';
import 'package:land_gov_flutter/utils/app_color.dart';
import 'package:land_gov_flutter/utils/app_layout.dart';
import 'package:land_gov_flutter/utils/app_string.dart';
import 'package:land_gov_flutter/utils/app_style.dart';

import '../../../../common_widgets/custom_button.dart';
import '../../../../common_widgets/custom_textfield.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _appBody(),
      ),
    );
  }

  Widget _appBody() {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20)),
      color: AppColor.bg_color,
      child: _bodyContent(),
    );
  }

  Widget _bodyContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/robo_logo.png",
            height: AppLayout.getHeight(56),
          ),
          SizedBox(height: AppLayout.getHeight(16)),
          Text(
            AppString.login_title_text,
            style: AppStyle.title_text,
          ),
          SizedBox(height: AppLayout.getHeight(16)),
          Center(
            child: Image.asset(
              "assets/login_title_img.png",
              height: AppLayout.getHeight(200),
            ),
          ),
          SizedBox(height: AppLayout.getHeight(16)),
          CustomTextField(hintText: AppString.user_id_hint_text),
          SizedBox(height: AppLayout.getHeight(8)),
          CustomTextField(hintText: AppString.pass_hint_text),
          SizedBox(height: AppLayout.getHeight(8)),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              AppString.forgot_pass_text,
              style: AppStyle.small_text.copyWith(color: AppColor.custom_blue),
            ),
          ),
          SizedBox(height: AppLayout.getHeight(16)),
          CustomButton(
              buttonColor: Colors.blue,
              buttonText: AppString.login,
              textColor: Colors.white),
          SizedBox(height: AppLayout.getHeight(16)),
          CustomButton(
              buttonColor: Colors.transparent,
              buttonText: AppString.sign_up,
              textColor: Colors.black),
        ],
      ),
    );
  }
}
