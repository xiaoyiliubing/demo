import 'package:demo/pages/test/view.dart';
import 'package:demo/route_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      showPerformanceOverlay: true, // 开启
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      initialRoute: TestPage.routeName,
      getPages: RouteConfig.getPages,
    );
  }
}
