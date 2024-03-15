import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_agency_ui/main.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var favorites = appState.favorites;
    var theme = Theme.of(context);

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('no faves yet :(', style: theme.textTheme.displayLarge),
      );
    }

    return Center(
      child: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(20),
              child: Text('You have'
                  '${favorites.length} favorites')),
          ListView(
            children: [
              for (var pair in favorites)
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text(pair.asLowerCase,
                      style: theme.textTheme.displayLarge),
                )
            ],
          )
        ],
      ),
    );
  }
}
