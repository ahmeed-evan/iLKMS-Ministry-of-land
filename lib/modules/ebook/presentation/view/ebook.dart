import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:land_gov_flutter/modules/ebook/presentation/controller/ebook_controller.dart';
import 'package:land_gov_flutter/utils/app_layout.dart';

import '../../../../common_widgets/ebook_card.dart';
import '../../../../routes/app_pages.dart';

class Ebook extends StatelessWidget {
  const Ebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(12),
                horizontal: AppLayout.getWidth(20)),
            child: _body()),
      ),
    );
  }

  _body() {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => InkWell(
              child: EbookCard(ebook: Get.find<EbookController>().ebooks[index]),
              onTap: () => Get.toNamed(Routes.EBOOK_DETAILS),
            ),
        separatorBuilder: (context, index) => SizedBox(
              height: AppLayout.getHeight(16),
            ),
        itemCount: Get.find<EbookController>().ebooks.length);
  }
}
