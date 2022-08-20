import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GenerateController extends GetxController {
  final double topSectionPadding = 50.0;
  final double bottomSectionPadding = 20.0;
  final double topSectionHeight = 50.0;

  final globalKey = GlobalKey();
  final textController = TextEditingController();
  RxString dataString = 'Hello from this QR'.obs;
  RxString inputErrorText = ''.obs;

  void onShareAndCapturePng() {}

  void onSubmit() {
    dataString.value = textController.text;
  }
}
