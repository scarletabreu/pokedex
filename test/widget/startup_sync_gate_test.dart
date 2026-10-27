import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pokedex/app/startup/initial_catalog_sync_controller.dart';
import 'package:pokedex/app/startup/initial_sync_status.dart';
import 'package:pokedex/app/startup/startup_sync_gate.dart';

void main() {
  testWidgets('mantiene la interfaz visible si falla la sincronizacion', (
    tester,
  ) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          initialCatalogSyncTaskProvider.overrideWithValue(
            () async => throw Exception('PokeAPI no disponible'),
          ),
        ],
        child: StartupSyncGate(
          child: MaterialApp(
            home: Scaffold(
              body: Consumer(
                builder: (context, ref, child) {
                  final status = ref.watch(initialCatalogSyncProvider);

                  return Column(
                    children: [
                      const Text('Pokedex disponible'),
                      Text(status.name),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );

    await tester.pump();
    await tester.pump();

    expect(find.text('pokedex disponible'), findsOneWidget);

    expect(find.text(InitialSyncStatus.failed.name), findsOneWidget);
  });
}
