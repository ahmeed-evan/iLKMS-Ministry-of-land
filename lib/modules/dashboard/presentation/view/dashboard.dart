import 'package:flutter/material.dart';
import 'package:land_gov_flutter/utils/app_layout.dart';
import '../../../../common_widgets/custom_link_card.dart';
import '../../../../utils/app_color.dart';
import '../../../../utils/app_string.dart';
import '../../../../utils/app_style.dart';
import '../widget/forum_card.dart';
import '../widget/latest_publication.dart';
import '../widget/top_readed_blog.dart';

class DashBoard extends StatelessWidget {
  final List<Map<String, String>> _importantLink = [
    {"linkUrl": "assets/image1.png", "linkText": "ই-নামজারি"},
    {"linkUrl": "assets/image2.png", "linkText": "ভূমি উন্নয়ন কর"},
    {"linkUrl": "assets/image3.png", "linkText": "ডিজিটাল ল্যান্ড রেকর্ড"},
    {"linkUrl": "assets/image4.png", "linkText": "অনলাইন শুনানি"},
    {"linkUrl": "assets/image5.png", "linkText": "ভূমি উন্নয়ন কর"},
    {"linkUrl": "assets/image6.png", "linkText": "সহায়তা কেন্দ্র"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _body()),
    );
  }

  _body() {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(12)),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topReadedBlog(),
              SizedBox(height: AppLayout.getHeight(16)),
              latestPublication(),
              SizedBox(height: AppLayout.getHeight(16)),
              ForumCard(),
              SizedBox(height: AppLayout.getHeight(16)),
              _importantLinkLayout(),
            ],
          ),
        ));
  }

  _importantLinks() {
    return Container(
      child: Expanded(
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          children: [
            CustomLinkCard(
              linkImageUrl: _importantLink[0]["linkUrl"]!,
              linkText: _importantLink[0]["linkText"]!,
            ),
            CustomLinkCard(
              linkImageUrl: _importantLink[1]["linkUrl"]!,
              linkText: _importantLink[1]["linkText"]!,
            ),
            CustomLinkCard(
              linkImageUrl: _importantLink[2]["linkUrl"]!,
              linkText: _importantLink[2]["linkText"]!,
            ),
            CustomLinkCard(
              linkImageUrl: _importantLink[3]["linkUrl"]!,
              linkText: _importantLink[3]["linkText"]!,
            ),
            CustomLinkCard(
              linkImageUrl: _importantLink[4]["linkUrl"]!,
              linkText: _importantLink[4]["linkText"]!,
            ),
            CustomLinkCard(
              linkImageUrl: _importantLink[5]["linkUrl"]!,
              linkText: _importantLink[5]["linkText"]!,
            ),
          ],
        ),
      ),
    );
  }

  _importantLinkLayout() {
    return Container(
      width: double.infinity,
      height: AppLayout.getHeight(315),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6),border: Border.all(color: Colors.blue,width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(),
          SizedBox(height: AppLayout.getHeight(20)),
          _importantLinks()
        ],
      ),
    );
  }

  _title() {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.custom_blue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6), topRight: Radius.circular(6))),
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(8), horizontal: AppLayout.getWidth(12)),
      width: double.maxFinite,
      child: Text(AppString.important_link, style: AppStyle.large_text),
    );
  }
}
