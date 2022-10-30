import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContextExtPage extends StatelessWidget {
  const ContextExtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Context Extensions'),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   width: context.width,
            //   height: context.heightTransformer(reducedBy: 20),
            //   color: context.theme.primaryColor,
            // ),

            Text('Tablet: ${context.isTablet.toString()}'),
            Text('Celular: ${context.isPhone.toString()}'),
            Text('Desktop: ${context.isLargeTablet.toString()}'),
            context.responsiveValue(
              desktop: Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              mobile: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
              tablet: Container(
                width: 200,
                height: 200,
                color: Colors.purple,
              ),
            )
          ],
        ),
      ),
    );
  }
}
