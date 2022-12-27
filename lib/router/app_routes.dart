import 'package:flutter/material.dart';

import 'package:componentes_app/models/models.dart';
import 'package:componentes_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //  TODO: borrar home
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt_sharp,
        name: 'listview tipo 1',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_outlined,
        name: 'listview tipo 2',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert_sharp,
        name: 'Alertas - Alerts',
        screen: const AlertScreen()),
    MenuOption(
        route: 'cards',
        icon: Icons.credit_card,
        name: 'Tarjetas - cards',
        screen: const CardScreen()),
  ];
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listview1': (context) => const ListView1Screen(),
    'listview2': (context) => const ListView2Screen(),
  };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
