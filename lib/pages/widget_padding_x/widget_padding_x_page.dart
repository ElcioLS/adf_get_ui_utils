import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetPaddingXPage extends StatelessWidget {
  const WidgetPaddingXPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Padding X'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Texto 1').paddingAll(40),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text('Texto2'),
            )
          ],
        ),
      ),
    );
  }
}
