import 'package:get/get.dart';

import 'pages/test/binding.dart';
import 'pages/test/view.dart';

class RouteConfig {
  static final List<GetPage> getPages = [
    GetPage(
      name: TestPage.routeName,
      page: () => const TestPage(),
      binding: TestBinding(),
    ),
  ];
}
