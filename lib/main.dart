
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:land_gov_flutter/utils/app_color.dart';
import 'modules/dashboard/presentation/view/dashboard.dart';
import 'modules/home/presentation/view/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
      ),
      home: Home(),
    );
  }
}
