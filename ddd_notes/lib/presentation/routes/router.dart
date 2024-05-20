import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: NotesOverviewRoute.page),
      ];
}
