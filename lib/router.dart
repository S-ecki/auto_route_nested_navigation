import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:auto_route_nested_navigation/screens.dart';
import 'package:auto_route_nested_navigation/tab_scaffold_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(
      path: '/',
      page: TabScaffoldPage,
      children: [
        AutoRoute<void>(
          path: 'a',
          name: 'ARouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute<void>(page: RootScreenA, path: ''),
            CustomRoute<void>(
              page: DetailsScreen,
              path: 'details',
              transitionsBuilder: TransitionsBuilders.noTransition,
            ),
          ],
        ),
        AutoRoute<void>(
          path: 'b',
          name: 'BRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute<void>(page: RootScreenB, path: ''),
            CustomRoute<void>(
              page: DetailsScreen,
              path: 'details',
              transitionsBuilder: TransitionsBuilders.noTransition,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
