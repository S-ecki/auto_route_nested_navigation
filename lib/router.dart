import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:auto_route_nested_navigation/screens.dart';
import 'package:auto_route_nested_navigation/tab_scaffold_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
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
            AutoRoute<void>(
              page: RootScreenA,
              path: '',
            ),
            AutoRoute<void>(
              page: DetailsScreenA,
              path: 'details',
            ),
          ],
        ),
        AutoRoute<void>(
          path: 'b',
          name: 'BRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute<void>(
              page: RootScreenB,
              path: '',
            ),
            AutoRoute<void>(
              page: DetailsScreenB,
              path: 'details',
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}



    // final goRouter = GoRouter(
    //   initialLocation: '/a',
    //   navigatorKey: _rootNavigatorKey,
    //   debugLogDiagnostics: true,
    //   routes: [
    //     ShellRoute(
    //       navigatorKey: _shellNavigatorKey,
    //       builder: (context, state, child) {
    //         return ScaffoldWithBottomNavBar(tabs: tabs, child: child);
    //       },
    //       routes: [
    //         // Products
    //         GoRoute(
    //           path: '/a',
    //           pageBuilder: (context, state) => NoTransitionPage(
    //             key: state.pageKey,
    //             child: const RootScreen(label: 'A', detailsPath: '/a/details'),
    //           ),
    //           routes: [
    //             GoRoute(
    //               path: 'details',
    //               builder: (context, state) => const DetailsScreen(label: 'A'),
    //             ),
    //           ],
    //         ),
    //         // Shopping Cart
    //         GoRoute(
    //           path: '/b',
    //           pageBuilder: (context, state) => NoTransitionPage(
    //             key: state.pageKey,
    //             child: const RootScreen(label: 'B', detailsPath: '/b/details'),
    //           ),
    //           routes: [
    //             GoRoute(
    //               path: 'details',
    //               builder: (context, state) => const DetailsScreen(label: 'B'),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ],
    // );