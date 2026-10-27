import 'package:go_router/go_router.dart';

import '../../features/pokemon/presentation/pages/pokemon_catalog_page.dart';
import '../../features/favorites/presentation/pages/favorites_page.dart';
import '../../features/trivia/presentation/pages/trivia_page.dart';
import '../../features/settings/presentation/pages/settings_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'catalog',
      builder: (context, state) => const PokemonCatalogPage(),
    ),
    GoRoute(
      path: '/favorites',
      name: 'favorites',
      builder: (context, state) => const FavoritesPage(),
    ),
    GoRoute(
      path: '/trivia',
      name: 'trivia',
      builder: (context, state) => const TriviaPage(),
    ),
    GoRoute(
      path: '/settings',
      name: 'settings',
      builder: (context, state) => const SettingsPage(),
    ),
  ],
);
