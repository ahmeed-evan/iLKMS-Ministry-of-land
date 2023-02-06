import 'package:flutter/material.dart';

import '../../../../common_widgets/custom_blog_card.dart';
import '../../../../utils/app_layout.dart';

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: _body()),);
  }

  _body() {
    return ListView.separated(itemBuilder: (context, index) =>CustomBlogCard(),
        separatorBuilder: (context, index) =>
            SizedBox(height: AppLayout.getHeight(16)),
        itemCount: 10);
  }
}
