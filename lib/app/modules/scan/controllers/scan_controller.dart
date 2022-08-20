import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class ScanController extends GetxController {
  RxString barcode = ''.obs;

  onCameraScanCallback() async {
    try {
      barcode.value = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666",
        "Cancel",
        false,
        ScanMode.DEFAULT,
      );
    } on PlatformException catch (e) {
      barcode.value = "Unknown error: $e";
    } on FormatException {
      barcode.value =
          'null (User returned using the "back"-button before scanning anything. Result)';
    } catch (e) {
      barcode.value = "Unknown error: $e";
    }
  }
}
