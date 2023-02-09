import 'package:flutter/material.dart';
import 'package:land_gov_flutter/common_widgets/custom_icon_button.dart';

import '../../../../utils/app_color.dart';
import '../../../../utils/app_layout.dart';
import '../../../../utils/app_string.dart';
import '../../../../utils/app_style.dart';

class ForumCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6),border: Border.all(color: Colors.blue,width: 1)),
      child: _forumBody(),
    );
  }

  _forumBody() {
    return Column(
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
          child: Text(AppString.discussed_forum, style: AppStyle.large_text),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(8),
              horizontal: AppLayout.getWidth(12)),
          child: _forumCard(),
        ),
      ],
    );
  }


  _forumCard() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset("assets/question_icon_forum.png",
            fit: BoxFit.contain,
            height: AppLayout.getHeight(32), width: AppLayout.getWidth(32)),
        SizedBox(width: AppLayout.getWidth(8)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _questionTitle(),
              _questionerInfo(),
              SizedBox(height: AppLayout.getHeight(8)),
              _tags(),
              SizedBox(height: AppLayout.getHeight(8)),
              _forumInfoCount(),
            ],
          ),
        ),
      ],
    );
  }

  _questionTitle() {
    return Text("ভূমি ই-নামজারী করার পদ্ধতি সম্পর্কে জানতে চাই। বিস্তারিত",
        style: AppStyle.large_text, overflow: TextOverflow.ellipsis);
  }

  _questionerInfo() {
    return Text("প্রশ্নকারী: সাদিয়া আফরিন ",
        style: AppStyle.normal_text, overflow: TextOverflow.ellipsis);
  }

  _tags() {
    return SizedBox(
      height: 30,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(4),
            horizontal: AppLayout.getWidth(16),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColor.custom_blue),
          child: Text("# ভূমি ", style: AppStyle.small_text),
        ),
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(width: AppLayout.getWidth(8)),
      ),
    );
  }

  _forumInfoCount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("উত্তর: 5",
            style: AppStyle.normal_text, overflow: TextOverflow.ellipsis),
        SizedBox(width: AppLayout.getWidth(16)),
        Text("দেখেছে: 25",
            style: AppStyle.normal_text, overflow: TextOverflow.ellipsis)
      ],
    );
  }
}
