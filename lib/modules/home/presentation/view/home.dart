import 'package:flutter/material.dart';
import 'package:land_gov_flutter/common_widgets/custom_appbar.dart';
import 'package:land_gov_flutter/modules/blog/presentation/view/blog.dart';
import 'package:land_gov_flutter/modules/chat_bot/presentation/view/chat_screen.dart';
import 'package:land_gov_flutter/modules/dashboard/presentation/view/dashboard.dart';
import 'package:land_gov_flutter/modules/forum/presentation/view/forum.dart';
import 'package:land_gov_flutter/modules/profile/presentation/view/profile.dart';

import '../../../../common_widgets/custom_sidebar.dart';
import '../../../ebook/presentation/view/ebook.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pages = [DashBoard(), Ebook(), Blog(), Forum()];
  final appbarTitle = <String>["DashBoard", "Ebook", "Blog", "Forum"];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      appBar: CustomAppbar(appbarTitle: appbarTitle[currentIndex], ),
      body: pages[currentIndex],
      drawer: CustomSideBar(),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          unselectedItemColor: Colors.grey.shade400,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              label: "Ebook",
              icon: Icon(Icons.auto_stories_outlined),
            ),
            BottomNavigationBarItem(
              label: "Blog",
              icon: Icon(Icons.post_add),
            ),
            BottomNavigationBarItem(
              label: "Forum",
              icon: Icon(Icons.chat),
            ),
            // BottomNavigationBarItem(
            //   label: "Chat",
            //   icon: Image.asset(
            //     "assets/robo_logo.png",
            //     height: 24,
            //   ),
            // ),
          ]
      )
      ,
    );
  }
}
