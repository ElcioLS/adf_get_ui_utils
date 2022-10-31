import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'get_reponsive_view_controller.dart';

class GetResponsiveViewPage
    extends GetResponsiveView<GetReponsiveViewController> {
  GetResponsiveViewPage({Key? key})
      : super(
            key: key,
            // alwaysUseBuilder: true,
            settings: const ResponsiveScreenSettings(tabletChangePoint: 800));

  @override
  Widget? desktop() {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.blue,
        child: Text(screen.context.width.toString()),
      ),
    );
  }

  @override
  Widget? phone() {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.yellow,
        child: Text(screen.context.width.toString()),
      ),
    );
  }

  @override
  Widget? tablet() {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.green,
        child: Text(screen.context.width.toString()),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Get Responsive View Page'),
  //     ),
  //     body: Container(),
  //   );
  // }

}
