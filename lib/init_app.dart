import 'package:get/get.dart';
import 'package:land_gov_flutter/modules/ebook/data/ebook_data_interfaces.dart';
import 'package:land_gov_flutter/modules/ebook/presentation/controller/ebook_controller.dart';

import 'modules/ebook/data/ebook_data_sourse.dart';
import 'network/network_client.dart';

Future<void> initApp() async {
  Get.lazyPut<EbookDataInterfaces>(() => EbookDataSource(NetworkClient()),
      fenix: true);
  Get.lazyPut(() => EbookController(), fenix: true);
}
