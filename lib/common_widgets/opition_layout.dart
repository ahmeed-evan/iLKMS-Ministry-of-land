import 'package:flutter/material.dart';
import 'package:land_gov_flutter/utils/app_color.dart';
import 'package:land_gov_flutter/utils/app_layout.dart';
import 'package:land_gov_flutter/utils/app_style.dart';

class OpinionLayout extends StatelessWidget {
  const OpinionLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _personsPicture(),
        SizedBox(width: AppLayout.getWidth(8)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _personsDetails(),
              _opinionCard(),
            ],
          ),
        )
      ],
    );
  }

  _personsPicture() {
    return ClipOval(
      child: SizedBox.fromSize(
        size: Size.fromRadius(16), // Image radius
        child: Image.asset(
          "assets/pro_pic.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  _personsDetails() {
    return RichText(
      text: TextSpan(
        text: 'আরিফুল ইসলাম ',
        style: AppStyle.large_text,
        children: const <TextSpan>[
          TextSpan(text: '12:34pm, 25/10/2022', style: AppStyle.small_text),
        ],
      ),
    );
  }

  _opinionCard() {
    return Container(
      decoration: BoxDecoration(color: AppColor.custom_blue),
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(4), horizontal: AppLayout.getWidth(8)),
      child: Text(
          "বড় বড় গ্রামীণ পরিবার বা জমির মালিকদের সম্পদ ও আয় বৃদ্ধি পাচ্ছে, নানা ধরনের কাজের সঙ্গে জড়িয়ে পড়ছেন তাঁরা"),
    );
  }
}
