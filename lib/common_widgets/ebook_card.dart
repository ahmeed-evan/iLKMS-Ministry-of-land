import 'package:flutter/material.dart';
import 'package:land_gov_flutter/common_widgets/custom_icon_button.dart';
import 'package:land_gov_flutter/utils/app_layout.dart';
import 'package:land_gov_flutter/utils/app_style.dart';

import '../utils/app_color.dart';

class EbookCard extends StatelessWidget {
  const EbookCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(4),
        vertical: AppLayout.getHeight(4),
      ),
      decoration: BoxDecoration(
        color: AppColor.bg_white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _bookImage(),
                SizedBox(width: AppLayout.getWidth(8)),
                _bookInfo(),
              ]),
          _bookCountInfo(),
        ],
      ),
    );
  }

  _bookImage() {
    return Container(
      height: AppLayout.getHeight(100),
      width: AppLayout.getWidth(100),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/blog_image.png'),
          ),
          borderRadius: BorderRadius.all(Radius.circular(6))),
    );
  }

  _bookInfo() {
    return Expanded(
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _title(),
          _author(),
          _publicationTimeline(),
        ]),
      ),
    );
  }

  _title() {
    return Text("জরুরী অবস্থা এবং আইন",
        style: AppStyle.normal_text, overflow: TextOverflow.ellipsis);
  }

  _author() {
    return Text("লেখকঃ এম এহতেশামুল বারী",
        style: AppStyle.small_text, overflow: TextOverflow.ellipsis);
  }

  _ratting() {}

  _publicationTimeline() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _publicationTime(),
        SizedBox(
          height: AppLayout.getHeight(4),
        ),
        _lastVersion(),
      ],
    );
  }

  _publicationTime() {
    return Text("প্রকাশের তারিখ: 25 আগস্ট 2022");
  }

  _lastVersion() {
    return Text("শেষ সংস্করণ: 25 জুলাই 2022");
  }

  _downloadButton() {
    return CustomIconButton(
      icondata: Icons.download_for_offline,
      labelText: "ডাউনলোড",
    );
  }

  _bookCountInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _downloadButton(),
        _likeCount(),
        _shareCount(),
        _viewCount(),
      ],
    );
  }

  _likeCount() {
    return CustomIconButton(
      icondata: Icons.thumb_up_alt_outlined,
      labelText: "23",
    );
  }

  _shareCount() {
    return CustomIconButton(icondata: Icons.share, labelText: "233");
  }

  _viewCount() {
    return CustomIconButton(
      icondata: Icons.remove_red_eye,
      labelText: "3452",
    );
  }
}
