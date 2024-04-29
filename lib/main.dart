import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtx_first/controller/quote_controller.dart';
import 'package:gtx_first/screen/quote_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => QuotesController());
    return GetMaterialApp(
      title: "Quotes",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: QuoteScreen(),
    );
  }
}
