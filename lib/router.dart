import 'package:satelite/welcome_screen.dart';
import 'package:satelite/find_satellite_screen.dart';
import 'package:satelite/satellite_info.dart';
import 'package:auto_route/auto_route.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Route1.page, initial: true),
        AutoRoute(page: Route2.page),
        AutoRoute(page: Route3.page),
      ];
}
