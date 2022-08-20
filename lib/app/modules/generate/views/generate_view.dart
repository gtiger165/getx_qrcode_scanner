import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../controllers/generate_controller.dart';

class GenerateView extends GetView<GenerateController> {
  @override
  Widget build(BuildContext context) {
    final bodyHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Generator'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: controller.onShareAndCapturePng,
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: Container(
        color: const Color(0xFFFFFFFF),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: controller.topSectionPadding,
                left: 20.0,
                right: 10.0,
                bottom: controller.bottomSectionPadding,
              ),
              child: SizedBox(
                height: controller.topSectionHeight,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Obx(
                        () => TextField(
                          controller: controller.textController,
                          decoration: InputDecoration(
                            hintText: "Enter a custom message",
                            errorText: controller.inputErrorText.value,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextButton(
                        onPressed: controller.onSubmit,
                        child: const Text("SUBMIT"),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: RepaintBoundary(
                  key: controller.globalKey,
                  child: Obx(
                    () => QrImage(
                      data: controller.dataString.value,
                      size: 0.5 * bodyHeight,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
