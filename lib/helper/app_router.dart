import 'package:flutter/material.dart';
import 'package:flutter_bloc/presentation_layer/views/character_details_view.dart';
import 'package:flutter_bloc/presentation_layer/views/characters_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'charactersView':
        return MaterialPageRoute(
          builder: (_) => const CharactersView(),
        );
      case 'characterDetailsView':
        return MaterialPageRoute(
          builder: (_) => const CharacterDetailsView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
