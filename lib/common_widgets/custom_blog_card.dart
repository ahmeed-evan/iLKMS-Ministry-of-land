import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../utils/app_layout.dart';
import '../utils/app_string.dart';
import '../utils/app_style.dart';
import 'custom_icon_button.dart';

class CustomBlogCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(12),
        horizontal: AppLayout.getWidth(20),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(8),
          horizontal: AppLayout.getWidth(12),
        ),
        decoration: BoxDecoration(
          color: AppColor.bg_white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _blogImage(),
            SizedBox(height: AppLayout.getHeight(8)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: _title()),
                _followButton(),
              ],
            ),
            _bloggerInfo(),
            SizedBox(height: AppLayout.getHeight(8)),
            Text(
                "যাত্রা শুরুর ছয় বছরের মাথায় প্রথমবারের মতো শতভাগ অনলাইনে ভূমি ব্যবহারের ছাড়পত্র দিয়েছে অনলাইনে ভূমি ব্যবহারের ছাড়পত্র দিয়েছে রাজধানী উন্নয়ন কর্তৃপক্ষ (রাজউক)।"
                    .substring(0, 100)),
            SizedBox(height: AppLayout.getHeight(8)),
            _blogInfolayout(),
          ],
        ),
      ),
    );
  }

  _blogInfolayout() {
    return Container(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          _totalView(),
          _totalLike(),
          _totalComments(),
          _totalShare(),
        ],
      ),
    );
  }

  _totalLike() {
    return CustomIconButton(
      icondata: Icons.thumb_up_alt_outlined,
      labelText: "321",
    );
  }

  _totalView() {
    return CustomIconButton(
      icondata: Icons.remove_red_eye,
      labelText: "621",
    );
  }

  _totalComments() {
    return CustomIconButton(
      icondata: Icons.messenger_outline,
      labelText: "64",
    );
  }

  _totalShare() {
    return CustomIconButton(
      icondata: Icons.share,
      labelText: "12",
    );
  }

  _blogImage() {
    return Container(
      width: double.maxFinite,
      height: AppLayout.getHeight(150),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/blog_image.png'),
          ),
          borderRadius: BorderRadius.all(Radius.circular(6))),
    );
  }

  _title() {
    return Text("ব্লগ শিরোনাম এখানে", style: AppStyle.large_text,overflow: TextOverflow.ellipsis,);
  }

  _bloggerInfo() {
    return Wrap(crossAxisAlignment: WrapCrossAlignment.center,children: [
      _profilePicture(),
      SizedBox(width: AppLayout.getWidth(8)),
      Text("আরিফুল ইসলাম, 12/01/2023, 10:30am")
    ]);
  }

  _profilePicture() {
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
  _followButton() {
    return SizedBox(
        height: 24,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () {},
            child: Text(
              AppString.follow,
              style: AppStyle.small_text.copyWith(color: Colors.white),
            )));
  }
}
