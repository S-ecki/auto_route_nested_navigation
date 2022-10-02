// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i5;

import 'screens.dart' as _i3;
import 'tab_scaffold_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    TabScaffoldRoute.name: (routeData) {
      return _i4.MaterialPageX<void>(
        routeData: routeData,
        child: const _i1.TabScaffoldPage(),
      );
    },
    ARouter.name: (routeData) {
      return _i4.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    BRouter.name: (routeData) {
      return _i4.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    RootScreenA.name: (routeData) {
      return _i4.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.RootScreenA(),
      );
    },
    DetailsScreenA.name: (routeData) {
      return _i4.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.DetailsScreenA(),
      );
    },
    RootScreenB.name: (routeData) {
      return _i4.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.RootScreenB(),
      );
    },
    DetailsScreenB.name: (routeData) {
      return _i4.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.DetailsScreenB(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          TabScaffoldRoute.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              ARouter.name,
              path: 'a',
              parent: TabScaffoldRoute.name,
              children: [
                _i4.RouteConfig(
                  RootScreenA.name,
                  path: '',
                  parent: ARouter.name,
                ),
                _i4.RouteConfig(
                  DetailsScreenA.name,
                  path: 'details',
                  parent: ARouter.name,
                ),
              ],
            ),
            _i4.RouteConfig(
              BRouter.name,
              path: 'b',
              parent: TabScaffoldRoute.name,
              children: [
                _i4.RouteConfig(
                  RootScreenB.name,
                  path: '',
                  parent: BRouter.name,
                ),
                _i4.RouteConfig(
                  DetailsScreenB.name,
                  path: 'details',
                  parent: BRouter.name,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.TabScaffoldPage]
class TabScaffoldRoute extends _i4.PageRouteInfo<void> {
  const TabScaffoldRoute({List<_i4.PageRouteInfo>? children})
      : super(
          TabScaffoldRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'TabScaffoldRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ARouter extends _i4.PageRouteInfo<void> {
  const ARouter({List<_i4.PageRouteInfo>? children})
      : super(
          ARouter.name,
          path: 'a',
          initialChildren: children,
        );

  static const String name = 'ARouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class BRouter extends _i4.PageRouteInfo<void> {
  const BRouter({List<_i4.PageRouteInfo>? children})
      : super(
          BRouter.name,
          path: 'b',
          initialChildren: children,
        );

  static const String name = 'BRouter';
}

/// generated route for
/// [_i3.RootScreenA]
class RootScreenA extends _i4.PageRouteInfo<void> {
  const RootScreenA()
      : super(
          RootScreenA.name,
          path: '',
        );

  static const String name = 'RootScreenA';
}

/// generated route for
/// [_i3.DetailsScreenA]
class DetailsScreenA extends _i4.PageRouteInfo<void> {
  const DetailsScreenA()
      : super(
          DetailsScreenA.name,
          path: 'details',
        );

  static const String name = 'DetailsScreenA';
}

/// generated route for
/// [_i3.RootScreenB]
class RootScreenB extends _i4.PageRouteInfo<void> {
  const RootScreenB()
      : super(
          RootScreenB.name,
          path: '',
        );

  static const String name = 'RootScreenB';
}

/// generated route for
/// [_i3.DetailsScreenB]
class DetailsScreenB extends _i4.PageRouteInfo<void> {
  const DetailsScreenB()
      : super(
          DetailsScreenB.name,
          path: 'details',
        );

  static const String name = 'DetailsScreenB';
}
