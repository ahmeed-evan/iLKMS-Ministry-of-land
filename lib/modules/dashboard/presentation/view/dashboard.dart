import 'package:flutter/material.dart';
import 'package:land_gov_flutter/common_widgets/custom_appbar.dart';
import 'package:land_gov_flutter/utils/app_color.dart';
import 'package:land_gov_flutter/utils/app_layout.dart';

import '../../../../common_widgets/custom_forum_card.dart';
import '../widget/latest_publication.dart';
import '../widget/top_readed_blog.dart';

class DashBoard extends StatelessWidget {
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
              latestPublication(),
              SizedBox(height: AppLayout.getHeight(16)),
              topReadedBlog(),
              SizedBox(height: AppLayout.getHeight(16)),
              CustomForumCard(),
            ],
          ),
        ));
  }
}
