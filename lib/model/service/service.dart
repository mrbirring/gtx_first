import 'dart:convert';

import 'package:get/get_connect/connect.dart';
import 'package:gtx_first/model/model/quotes.dart';

class ApiService extends GetConnect {
  Future<List<Quote>> getQuotes() async {
    var responce = await get("https://type.fit/api/quotes");

    Iterable result = jsonDecode(responce.body);
    return result.map((e) => Quote.fromJson(e)).toList();
  }
}
