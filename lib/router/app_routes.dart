import 'package:flutter/material.dart';
import 'package:listview/main.dart';
import 'package:listview/models/menu_options.dart';
import 'package:listview/screens/animated_screen.dart';
import 'package:listview/screens/avatar_screen.dart';
import 'package:listview/screens/screens.dart';

class AppRoutes {
  static const initalRoute = 'Home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'ListView',
        name: 'ListView',
        screen: ListView1Screen(),
        icon: Icons.list_sharp),
    MenuOption(
        route: 'Alerts',
        name: 'Alerts',
        screen: AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: 'Cards',
        name: 'Cards',
        screen: CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'Home',
        name: 'Home',
        screen: HomeScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'Avatar',
        name: 'Avatar',
        screen: AvartarScreen(),
        icon: Icons.face),
    MenuOption(
        route: 'Animated',
        name: 'Animated',
        screen: AnimatedScreen(),
        icon: Icons.play_circle_outline_outlined),
    MenuOption(
        route: 'Forms',
        name: 'Forms',
        screen: InputsScreen(),
        icon: Icons.text_format_sharp),
    MenuOption(
        route: 'Slider',
        name: 'Slider',
        screen: slideScreen(),
        icon: Icons.sledding),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (var option in menuOptions) {
      appRoutes.addAll({option.name: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'ListView': (BuildContext context) => const ListView1Screen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
