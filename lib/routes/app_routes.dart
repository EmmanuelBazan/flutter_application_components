import 'package:flutter/material.dart';
import 'package:flutter_application_components/models/models.dart';
import 'package:flutter_application_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'HomeScreen';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'HomeScreen',
    //     name: 'Home screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home),
    MenuOption(
        route: 'HomeListScreen',
        name: 'List screen',
        screen: const HomeListScreen(),
        icon: Icons.list),
    MenuOption(
        route: 'AlertScreen',
        name: 'Alert screen',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: 'CardScreen',
        name: 'Card screen',
        screen: const CardScreen(),
        icon: Icons.calendar_view_month),
    MenuOption(
        route: 'AvatarScreen',
        name: 'Avatars',
        screen: const AvatarScreen(),
        icon: Icons.mood_rounded),
    MenuOption(
        route: 'AnimatedScreen',
        name: 'Animated',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOption(
        route: 'InputScreen',
        name: 'Inputs and forms',
        screen: const InputScreen(),
        icon: Icons.input_rounded),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'HomeScreen': (BuildContext context) => const HomeScreen(),
  //   'HomeListScreen': (BuildContext context) => const HomeListScreen(),
  //   'AlertScreen': (BuildContext context) => const AlertScreen(),
  //   'CardScreen': (BuildContext context) => const CardScreen(),
  // };

  static Map<String, Widget Function(BuildContext)> getRouteApp() {
    Map<String, Widget Function(BuildContext)> routesApp = {};
    routesApp
        .addAll({'HomeScreen': (BuildContext context) => const HomeScreen()});

    for (var option in menuOptions) {
      routesApp.addAll({option.route: (BuildContext context) => option.screen});
    }

    return routesApp;
  }

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
