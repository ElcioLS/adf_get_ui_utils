import 'package:adf_get_ui_utils/pages/get_view/get_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetViewPage extends GetView<GetViewController> {
// class GetViewPage extends StatelessWidget {
  // final controller = Get.find<GetViewController>();

  // final c = Get.find<GetViewController>();

  const GetViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get View Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(controller.nome.value);
            }),
            ElevatedButton(
                onPressed: () => controller.alterar(),
                child: const Text('Alterar')),
          ],
        ),
      ),
    );
  }
}
