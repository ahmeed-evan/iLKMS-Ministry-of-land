import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:land_gov_flutter/routes/app_pages.dart';
import 'package:land_gov_flutter/utils/app_color.dart';
import 'init_app.dart';
import 'modules/dashboard/presentation/view/dashboard.dart';
import 'modules/home/presentation/view/home.dart';

void main() async{
  await initApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _themeData,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }

  ThemeData _themeData = ThemeData(
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: AppColor.custom_blue,
      ),
    ),
    scaffoldBackgroundColor: AppColor.bg_color,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColor.bg_color,
    ),
  );
}
