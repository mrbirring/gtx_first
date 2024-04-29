import 'package:get/get.dart';
import 'package:gtx_first/model/model/quotes.dart';
import 'package:gtx_first/model/service/service.dart';

class QuotesController extends GetxController {
  @override
  void onInit() {
    getQuotes();
    super.onInit();
  }

  List<Quote> quotes = <Quote>[].obs;
  void getQuotes() async {
    quotes.addAll(await ApiService().getQuotes());
  }
}
