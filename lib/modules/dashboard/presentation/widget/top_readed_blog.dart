import 'package:flutter/material.dart';

import '../../../../common_widgets/custom_icon_button.dart';
import '../../../../common_widgets/expanded_text.dart';
import '../../../../utils/app_color.dart';
import '../../../../utils/app_layout.dart';
import '../../../../utils/app_string.dart';
import '../../../../utils/app_style.dart';

Widget topReadedBlog() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(6)),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      _title(),
      Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(8),
          horizontal: AppLayout.getWidth(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpandedText(
                text:
                    "বড় বড় গ্রামীণ পরিবার বা জমির মালিকদের সম্পদ ও আয় বৃদ্ধি পাচ্ছে, নানা ধরনের কাজের সঙ্গে জড়িয়ে পড়ছেন তাঁরা। জমির ইজারা দিয়ে তাঁরা অর্থ পাচ্ছেন, তাঁরাই আবার রাইস মিল দিচ্ছেন, শহরে বাড়ি-গাড়ি কিনছেন। আরেক দিকে গ্রামীণ সমাজের একদম নিম্নবিত্ত মানুষের জীবনেও ব ৈচিত্র্য আসছে। শুধু কৃষিশ্রমিক হিসেবে কাজ করে তাঁদের আর পোষাচ্ছে না। তাঁরা শহরে যাচ্ছেন, বিভিন্ন ধরনের কাজে যুক্ত হচ্ছেন। তবে মধ্যম শ্রেণির জীবনে বিশেষ পরিবর্তন আসেনি। "
                    "বড় বড় গ্রামীণ পরিবার বা জমির মালিকদের সম্পদ ও আয় বৃদ্ধি পাচ্ছে, নানা ধরনের কাজের সঙ্গে জড়িয়ে পড়ছেন তাঁরা। জমির ইজারা দিয়ে তাঁরা অর্থ পাচ্ছেন, তাঁরাই আবার রাইস মিল দিচ্ছেন, শহরে বাড়ি-গাড়ি কিনছেন। "),
            SizedBox(height: AppLayout.getHeight(8)),
            _blogImage(),
            SizedBox(height: AppLayout.getHeight(8)),
            _blogInfolayout(),
          ],
        ),
      ),
    ]),
  );
}

_blogInfolayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _totalView(),
      _totalLike(),
      _totalComments(),
      _totalShare(),
    ],
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
  return Container(
    decoration: BoxDecoration(
        color: AppColor.custom_blue,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(6), topRight: Radius.circular(6))),
    padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(8), horizontal: AppLayout.getWidth(12)),
    width: double.maxFinite,
    child: Text(AppString.top_readed_blog, style: AppStyle.large_text),
  );
}
