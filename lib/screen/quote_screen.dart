import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtx_first/controller/quote_controller.dart';
import 'package:gtx_first/model/model/quotes.dart';

class QuoteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuotesController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Quote of the Day',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ),
        child: GetX<QuotesController>(
            init: controller,
            builder: (value) {
              return Container(
                child: ListView.builder(
                    itemCount: value.quotes.length,
                    itemBuilder: (context, index) {
                      Quote currentItem = value.quotes[index];
                      return cardItem(
                          quotes: currentItem.text, author: currentItem.author);
                    }),
              );
            }),
      ),
    );
  }
}

Widget cardItem({required String author, required String quotes}) {
  return Card(
    color: Colors.grey,
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(
          15.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quotes,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                wordSpacing: 1,
              ),
            ),
            Text(
              Gets(author),
              style: const TextStyle(fontSize: 15),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    ),
  );
}

String Gets(String author) {
  List one = author.split(',');
  return one[0];
}
