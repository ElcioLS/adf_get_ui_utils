import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetMarginXPage extends StatelessWidget {
  const WidgetMarginXPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Margin X'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //ERRADO ERRADO ERRADO - CONTAINER DENTRO DE CONTAINER NÃO PODE
            // Container(
            //   height: 200,
            //   width: 200,
            //   color: Colors.red,
            // ).marginAll(50),
            // Container(
            //   height: 200,
            //   width: 200,
            //   color: Colors.red,
            // ),

            const Text('Texto 1').marginAll(40),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text('Texto2'),
            )
          ],
        ),
      ),
    );
  }
}
