import 'dart:convert';

import 'package:get/get.dart';
import 'package:land_gov_flutter/modules/ebook/data/ebook_data_interfaces.dart';

import '../../../network/network_client.dart';
import '../model/ebook.dart';

class EbookDataSource implements EbookDataInterfaces {
  final NetworkClient networkClient;

  EbookDataSource(this.networkClient);

  @override
  Future<List<Ebook>> getEbooks() async {
    Response response = await networkClient.getRequest("/ebooks");
    print(response.statusCode);
    if (response.statusCode != 200) throw Exception("Server Error");
    Iterable list = json.decode(response.body);
    List<Ebook> ebooks =
        list.map((element) => Ebook.fromJson(element)).toList();
    print("$list :::::$ebooks");
    return ebooks;
  }
}
