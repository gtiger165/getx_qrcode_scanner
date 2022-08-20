import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_qrcode_scanner/app/widgets/button_widget.dart';

import '../controllers/scan_controller.dart';

class ScanView extends GetView<ScanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ButtonWidget(
              label: "Start Camera Scan",
              callback: controller.onCameraScanCallback,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              child: Obx(
                () => Text(
                  controller.barcode.value,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
