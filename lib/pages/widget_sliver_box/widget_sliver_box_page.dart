import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetSliverBoxPage extends StatelessWidget {
  const WidgetSliverBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Widget Sliver Box'),
        ),
        body: CustomScrollView(
          slivers: [
            Container(
              height: 100,
              width: 200,
              color: Colors.indigo,
            ).sliverBox,
            Container(
              height: 100,
              width: 200,
              color: Colors.green,
            ).sliverBox,
            Container(
              height: 100,
              width: 200,
              color: Colors.black,
            ).sliverBox,
            const SliverList(delegate: SliverChildListDelegate.fixed([])),
            SliverToBoxAdapter(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.black,
            ).sliverBox,
            Container(
              height: 100,
              width: 200,
              color: Colors.yellow,
            ).sliverBox,
            Container(
              height: 100,
              width: 200,
              color: Colors.blue,
            ).sliverBox,
          ],
        ));
  }
}
