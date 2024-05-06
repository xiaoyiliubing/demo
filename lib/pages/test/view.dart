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
    return Container();
  }

  @override
  void dispose() {
    Get.delete<TestLogic>();
    super.dispose();
  }
}