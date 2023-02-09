import 'package:get/get.dart';

import '../modules/ebook/presentation/view/ebook_details.dart';
import '../modules/home/presentation/view/home.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => Home(),
      // binding: LoginBinding(),
    ),
    GetPage(
        name: _Paths.EBOOK_DETAILS,
        page: () => EbookDetails(),
        transition: Transition.leftToRight
        // binding: LoginBinding(),
        ),
  ];
}
