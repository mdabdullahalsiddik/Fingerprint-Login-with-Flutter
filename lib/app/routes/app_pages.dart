import 'home_routes.dart';
import 'done_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/home';

  static final routes = [
    ...HomeRoutes.routes,
		...DoneRoutes.routes,
  ];
}
