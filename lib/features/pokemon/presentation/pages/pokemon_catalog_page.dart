import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/startup/initial_catalog_sync_controller.dart';
import '../../../../app/startup/initial_sync_status.dart';
import '../providers/pokemon_providers.dart';

class PokemonCatalogPage extends ConsumerWidget {
  const PokemonCatalogPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final catalog = ref.watch(pokemonCatalogProvider);
    final syncStatus = ref.watch(initialCatalogSyncProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
        actions: [
          IconButton(
            tooltip: 'Favoritos',
            icon: const Icon(Icons.favorite_outline),
            onPressed: () => context.push('/favorites'),
          ),
          IconButton(
            tooltip: 'Trivia',
            icon: const Icon(Icons.quiz_outlined),
            onPressed: () => context.push('/trivia'),
          ),
          IconButton(
            tooltip: 'Ajustes',
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => context.push('/settings'),
          ),
        ],
      ),
      body: Column(
        children: [
          if (syncStatus == InitialSyncStatus.syncing)
            const LinearProgressIndicator(),

          if (syncStatus == InitialSyncStatus.failed)
            MaterialBanner(
              content: const Text(
                'No se pudo actualizar el catálogo. '
                'Puedes seguir usando los datos locales.',
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    ref.read(initialCatalogSyncProvider.notifier).retry();
                  },
                  child: const Text('Reintentar'),
                ),
              ],
            ),

          Expanded(
            child: catalog.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text(
                    'Error al leer el catálogo local:\n$error',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              data: (pokemons) {
                if (pokemons.isEmpty) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.catching_pokemon, size: 72),
                          SizedBox(height: 16),
                          Text(
                            'Todavía no hay Pokémon disponibles',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'El catálogo aparecerá aquí cuando '
                            'se guarden los primeros datos.',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                }

                return ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: pokemons.length,
                  itemBuilder: (context, index) {
                    final pokemon = pokemons[index];

                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(child: Text('${pokemon.id}')),
                        title: Text(pokemon.name.toUpperCase()),
                        subtitle: Text(
                          pokemon.types.isEmpty
                              ? 'Sin tipos registrados'
                              : pokemon.types.join(' / '),
                        ),
                        trailing: const Icon(Icons.chevron_right),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
