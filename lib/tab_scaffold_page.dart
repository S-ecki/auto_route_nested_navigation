import 'package:auto_route/auto_route.dart';
import 'package:auto_route_nested_navigation/router.gr.dart';
import 'package:flutter/material.dart';

class TabScaffoldPage extends StatelessWidget {
  const TabScaffoldPage({
    Key? key,
  }) : super(key: key);

  static const navBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Section A',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Section B',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ARouter(),
        BRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: navBarItems,
        );
      },
    );
  }
}
