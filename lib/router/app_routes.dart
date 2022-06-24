import 'package:flutter/material.dart';

import '../screens/alert_screen.dart';
import '../screens/card_screen.dart';
import '../screens/home_screen.dart';
import '../screens/listview1_screen.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'home',
        icon: Icons.home,
        name: 'HomeScreen',
        screen: const HomeScreen()),
    MenuOptions(
        route: 'listview1',
        icon: Icons.list,
        name: 'Lista 1',
        screen: const Listview1Screen()),
    MenuOptions(
        route: 'alert',
        icon: Icons.add_alert,
        name: 'Alertas',
        screen: const AlertScreen()),
    MenuOptions(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Cards',
        screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final element in menuOptions) {
      appRoutes.addAll({element.route: ( context ) => element.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview1Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static onGenerateRoute(settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
