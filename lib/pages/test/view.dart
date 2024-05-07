import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class TestPage extends StatefulWidget {

  static String routeName = '/demo';

  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final logic = Get.find<TestLogic>();
  final state = Get.find<TestLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            GetBuilder<TestLogic>(builder: (logic) {
              final state = logic.state;
              return Text(
                '${state.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: logic.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<TestLogic>();
    super.dispose();
  }
}