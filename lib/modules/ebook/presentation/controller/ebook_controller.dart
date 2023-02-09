import 'package:get/get.dart';
import 'package:land_gov_flutter/modules/ebook/data/ebook_data_interfaces.dart';
import 'package:land_gov_flutter/modules/ebook/model/ebook.dart';

class EbookController extends GetxController {
  EbookDataInterfaces _ebookDataInterfaces = Get.find<EbookDataInterfaces>();

  RxList<Ebook> _ebooks = <Ebook>[].obs;

  RxList<Ebook> get ebooks => _ebooks;

  getEbooks() async {
    _ebooks.addAll(await _ebookDataInterfaces.getEbooks());
    print(_ebooks);
  }

  @override
  void onInit() {
    getEbooks();
  }
}
