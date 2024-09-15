import 'package:get/get.dart';

import '../modules/done/done_binding.dart';
import '../modules/done/done_page.dart';

class DoneRoutes {
  DoneRoutes._();

  static const done = '/done';

  static final routes = [
    GetPage(
      name: done,
      page: () => const DonePage(),
      binding: DoneBinding(),
    ),
  ];
}
