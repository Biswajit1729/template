import 'package:get/get.dart';

import '../../index.dart';

class RoutePages {
  static const INITIAL = RouteNames.main;
  static List<GetPage> list = [
    GetPage(
        name: RouteNames.main,
        page: () {
          return const IndexPage();
        })
  ];
}
