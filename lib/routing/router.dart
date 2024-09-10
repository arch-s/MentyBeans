import 'package:flutter/material.dart';
import 'package:menty_beans/features/calendar/calendar.dart';

import 'route_paths.dart';

// you can navigate around the app with Navigator.pushNamed(context, <path>);
class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case calendar:
        return MaterialPageRoute(builder: (_) => const Calendar());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(child: Text('${settings.name} page not found')),
        ));
    }
  }
}