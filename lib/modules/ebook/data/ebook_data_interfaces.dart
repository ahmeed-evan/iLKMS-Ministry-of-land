import '../model/ebook.dart';

abstract class EbookDataInterfaces {
  Future<List<Ebook>> getEbooks();
}
