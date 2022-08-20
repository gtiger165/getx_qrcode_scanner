import 'package:get/get.dart';
import 'package:getx_qrcode_scanner/app/routes/app_pages.dart';

class HomeController extends GetxController {
  void onScanCallback() => Get.toNamed(Routes.SCAN);

  void onGenerateCallback() => Get.toNamed(Routes.GENERATE);
}
