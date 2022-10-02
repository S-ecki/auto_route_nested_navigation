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
    RootRouteA.name: (routeData) {
      return _i4.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.RootScreenA(),
      );
    },
    DetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsRouteArgs>();
      return _i4.CustomPage<void>(
        routeData: routeData,
        child: _i3.DetailsScreen(
          label: args.label,
          key: args.key,
        ),
        transitionsBuilder: _i4.TransitionsBuilders.noTransition,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RootRouteB.name: (routeData) {
      return _i4.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.RootScreenB(),
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
                  RootRouteA.name,
                  path: '',
                  parent: ARouter.name,
                ),
                _i4.RouteConfig(
                  DetailsRoute.name,
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
                  RootRouteB.name,
                  path: '',
                  parent: BRouter.name,
                ),
                _i4.RouteConfig(
                  DetailsRoute.name,
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
class RootRouteA extends _i4.PageRouteInfo<void> {
  const RootRouteA()
      : super(
          RootRouteA.name,
          path: '',
        );

  static const String name = 'RootRouteA';
}

/// generated route for
/// [_i3.DetailsScreen]
class DetailsRoute extends _i4.PageRouteInfo<DetailsRouteArgs> {
  DetailsRoute({
    required String label,
    _i5.Key? key,
  }) : super(
          DetailsRoute.name,
          path: 'details',
          args: DetailsRouteArgs(
            label: label,
            key: key,
          ),
        );

  static const String name = 'DetailsRoute';
}

class DetailsRouteArgs {
  const DetailsRouteArgs({
    required this.label,
    this.key,
  });

  final String label;

  final _i5.Key? key;

  @override
  String toString() {
    return 'DetailsRouteArgs{label: $label, key: $key}';
  }
}

/// generated route for
/// [_i3.RootScreenB]
class RootRouteB extends _i4.PageRouteInfo<void> {
  const RootRouteB()
      : super(
          RootRouteB.name,
          path: '',
        );

  static const String name = 'RootRouteB';
}
