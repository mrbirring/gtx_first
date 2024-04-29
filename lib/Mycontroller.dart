import 'package:get/get.dart';

class myhom extends GetxController {
  final num = 6.obs;
  final num1 = 6.obs;
  int get sum => num.value + num1.value;
}
