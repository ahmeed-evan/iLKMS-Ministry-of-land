import 'package:flutter/material.dart';
import 'package:land_gov_flutter/common_widgets/custom_icon_button.dart';
import 'package:land_gov_flutter/modules/ebook/model/ebook.dart';
import 'package:land_gov_flutter/utils/app_layout.dart';
import 'package:land_gov_flutter/utils/app_style.dart';

import '../utils/app_color.dart';

class EbookCard extends StatelessWidget {
  final Ebook ebook;

  EbookCard({required this.ebook});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: AppLayout.getHeight(165),
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(4),
          vertical: AppLayout.getHeight(4),
        ),
        decoration: BoxDecoration(
          color: AppColor.bg_white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.blue, width: 1),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _bookImage(),
            SizedBox(width: AppLayout.getWidth(8)),
            _bookInfo(),
          ],
        ));
  }

  _bookImage() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/blog_image.png'),
            ),
            borderRadius: BorderRadius.all(Radius.circular(6))),
      ),
    );
  }

  _bookInfo() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(),
          _author(),
          _publicationTimeline(),
          _bookCountInfo()
        ]);
  }

  _title() {
    return Text(ebook.ebookName ?? "জরুরী অবস্থা এবং আইন",
        style: AppStyle.title_text, overflow: TextOverflow.ellipsis);
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
    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _likeCount(),
          _shareCount(),
          _viewCount(),
        ],
      ),
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
