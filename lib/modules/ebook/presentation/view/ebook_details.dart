import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../../common_widgets/custom_appbar_inner_page.dart';
import '../../../../common_widgets/custom_icon_button.dart';
import '../../../../common_widgets/opition_layout.dart';
import '../../../../utils/app_layout.dart';
import '../../../../utils/app_string.dart';
import '../../../../utils/app_style.dart';

class EbookDetails extends StatelessWidget {
  const EbookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarInner(appbarTitle: AppString.ebook),
      body: _body(),
    );
  }

  _body() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20)),
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _bookImage(),
            SizedBox(height: AppLayout.getHeight(8)),
            _title(),
            _author(),
            _publicationTimeline(),
            SizedBox(height: AppLayout.getHeight(8)),
            _shortDescription(),
            _bookCountInfo(),
            SizedBox(height: AppLayout.getHeight(8)),
            const Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            SizedBox(height: AppLayout.getHeight(8)),
            Text(
              AppString.opinions + " (3)",
              style: AppStyle.normal_text,
            ),
            SizedBox(height: AppLayout.getHeight(8)),
            _opinionSection(),
          ],
        ),
      ),
    );
  }

  _bookImage() {
    return Container(
      height: AppLayout.getHeight(250),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/blog_image.png'),
          ),
          borderRadius: BorderRadius.all(Radius.circular(6))),
    );
  }

  _title() {
    return Text("জরুরী অবস্থা এবং আইন",
        style: AppStyle.title_text, overflow: TextOverflow.ellipsis);
  }

  _author() {
    return Text("লেখকঃ এম এহতেশামুল বারী",
        style: AppStyle.small_text, overflow: TextOverflow.ellipsis);
  }

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

  _bookCountInfo() {
    return Container(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          _readFullButton(),
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

  _shortDescription() {
    String htmldata =
        "<p>(১৩২৭৫৫)</p>\r\n\r\n<p>রেজিস্টার্ড নং ডি এ-১</p>\r\n\r\n<p>";
    // Document doc = parse(html);
    return Html(data: htmldata,);
  }

  _readFullButton() {
    return SizedBox(
        height: 24,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () {},
            child: Text(
              AppString.read_more,
              style: AppStyle.small_text.copyWith(color: Colors.white),
            )));
  }

  _opinionSection() {
    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => OpinionLayout(),
        separatorBuilder: (context, index) =>
            SizedBox(height: AppLayout.getHeight(8)),
        itemCount: 3);
  }
}
