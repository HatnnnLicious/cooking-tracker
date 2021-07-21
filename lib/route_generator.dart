import 'package:flutter/material.dart';
import './main.dart';
import './recipes_screen.dart';
import './recipes_editor.dart';
import './settings_screen.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyHomePage(title: '_',));

      case '/recipes_screen':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => RecipesScreen(
              // data: args,
            ),
          );
        } else {
          return _errorRoute();
        }

      case '/recipes_editor':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => RecipesEditor(
              // data: args,
            ),
          );
        } else {
          return _errorRoute();
        }

      case '/settings_screen':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SettingsScreen(
             // data: args,
            ),
          );
        } else {
          return _errorRoute();
        }

      //  return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}