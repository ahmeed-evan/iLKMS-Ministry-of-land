import 'package:get/get.dart';

class NetworkClient extends GetConnect {
  Future<Response> getRequest(String apiEndPoint) async {
    return await get(_getRequestUrl(apiEndPoint), headers: {
      "Content-Type": "application/json",
      "Accept": "application/json"
    }).timeout(const Duration(seconds: 20));
  }

  String _getRequestUrl(String apiEndPoint) {
    return "";
  }
}
