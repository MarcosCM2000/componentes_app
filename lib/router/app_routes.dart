import 'package:flutter/material.dart';

import 'package:componentes_app/models/models.dart';
import 'package:componentes_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    /*
    MenuOption(
        route: 'home',
        icon: Icons.tv_sharp,
        name: 'Home Screen',
        screen: const HomeScreen()),*/
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt_sharp,
        name: 'listview tipo 1',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_outlined,
        name: 'listview tipo 2',
        screen: const ListView2Screen()),
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
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        name: 'Circle avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle_fill_outlined,
        name: 'Animated container',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input_rounded,
        name: 'Text Inputs',
        screen: const InputsScreen()),
    MenuOption(
        route: 'slider',
        icon: Icons.slow_motion_video_outlined,
        name: 'Slider & checks',
        screen: const SliderScreen()),
    MenuOption(
        route: 'listviewbuilder',
        icon: Icons.build_circle_outlined,
        name: 'InfiniteScroll & pull to refresh',
        screen: const ListviewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen(),
    'home': (context) => const HomeScreen(),
    'listview1': (context) => const ListView1Screen(),
    'listview2': (context) => const ListView2Screen(),
  };*/
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
