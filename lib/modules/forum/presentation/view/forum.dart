import 'package:flutter/material.dart';
import 'package:land_gov_flutter/common_widgets/custom_forum_card.dart';
import 'package:land_gov_flutter/utils/app_layout.dart';

class Forum extends StatelessWidget {
  const Forum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: _body()),);
  }

  _body() {
    return ListView.separated(itemBuilder: (context, index) =>CustomForumCard(),
        separatorBuilder: (context, index) =>
            SizedBox(height: AppLayout.getHeight(16)),
        itemCount: 10);
  }
}
