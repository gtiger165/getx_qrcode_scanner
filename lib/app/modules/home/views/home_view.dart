import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_qrcode_scanner/app/widgets/button_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner & Generator'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ButtonWidget(
              label: "Scan QR Code",
              callback: controller.onScanCallback,
            ),
            ButtonWidget(
              label: "Generate QR Code",
              callback: controller.onGenerateCallback,
            ),
          ],
        ),
      ),
    );
  }
}
