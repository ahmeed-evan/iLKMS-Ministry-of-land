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
          color: Colors.white, borderRadius: BorderRadius.circular(6)),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _profilePicture(),
            SizedBox(width: AppLayout.getWidth(8)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _name(),
                _postedDate(),
              ],
            ),
            const Spacer(),
            _followButton(),
          ],
        ),
        SizedBox(height: AppLayout.getHeight(16)),
        _discussionTitle(),
        SizedBox(height: AppLayout.getHeight(8)),
        _shortDiscussion(),
        SizedBox(height: AppLayout.getHeight(16)),
        _tags(),
        SizedBox(height: AppLayout.getHeight(16)),
        _forumInfoCounterLayout(),
      ],
    );
  }

  _profilePicture() {
    return ClipOval(
      child: SizedBox.fromSize(
        size: Size.fromRadius(30), // Image radius
        child: Image.asset(
          "assets/pro_pic.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  _name() {
    return Text(
      "User Name",
      style: AppStyle.normal_text,
    );
  }

  _postedDate() {
    return Text(
      "28-12-2023",
      style: AppStyle.small_text,
    );
  }

  _followButton() {
    return SizedBox(
        height: 24,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.custom_blue,
            ),
            onPressed: () {},
            child: Text(
              AppString.follow,
              style: AppStyle.small_text,
            )));
  }

  _discussionTitle() {
    return Text(
      "ভূমি ই-নামজারী করার পদ্ধতি।",
      style: AppStyle.normal_text.copyWith(fontWeight: FontWeight.bold),
      overflow: TextOverflow.ellipsis,
    );
  }

  _shortDiscussion() {
    return Text("ভূমি ই-নামজারী করার পদ্ধতি। ভূমি ই-নামজারী করার পদ্ধতি। "
        "ভূমি ই-নামজারী করার পদ্ধতি। ভূমি ই-নামজারী করার পদ্ধতি।");
  }

  _tags() {
    return SizedBox(
      height: 30,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(4),
            horizontal: AppLayout.getWidth(16),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColor.custom_blue),
          child: Text("ভূমি ", style: AppStyle.small_text),
        ),
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(width: AppLayout.getWidth(8)),
      ),
    );
  }

  _forumInfoCounterLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _forumVote(),
        _forumComment(),
        const Spacer(),
        _totalVoteCounter(),
      ],
    );
  }

  _forumVote() {
    return CustomIconButton(icondata: Icons.star_border_outlined);
  }

  _forumComment() {
    return CustomIconButton(icondata: Icons.chat_bubble_outline);
  }

  _totalVoteCounter() {
    return Column(
      children: [
        Text("23",
            style: AppStyle.title_text.copyWith(
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            )),
        Text(
          AppString.total_voted,
          style: AppStyle.small_text,
        ),
      ],
    );
  }
}
