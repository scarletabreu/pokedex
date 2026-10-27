import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/di/graphql_providers.dart';
import 'initial_sync_status.dart';

typedef CatalogSyncTask = Future<int> Function();

/// Permite sustituir la sincronización real por una implementación falsa durante las pruebas.
final initialCatalogSyncTaskProvider = Provider<CatalogSyncTask>((ref) {
  final repository = ref.watch(catalogSyncRepositoryProvider);

  return () => repository.syncPage(limit: 20, offset: 0);
});

final initialCatalogSyncProvider =
    NotifierProvider<InitialCatalogSyncController, InitialSyncStatus>(
      InitialCatalogSyncController.new,
    );

class InitialCatalogSyncController extends Notifier<InitialSyncStatus> {
  bool _running = false;
  String? _lastError;

  String? get lastError => _lastError;

  @override
  InitialSyncStatus build() {
    return InitialSyncStatus.idle;
  }

  Future<void> start() async {
    if (_running || state == InitialSyncStatus.completed) {
      return;
    }

    _running = true;
    _lastError = null;
    state = InitialSyncStatus.syncing;

    try {
      final sync = ref.read(initialCatalogSyncTaskProvider);

      await sync();

      state = InitialSyncStatus.completed;
    } catch (error) {
      _lastError = error.toString();
      state = InitialSyncStatus.failed;
    } finally {
      _running = false;
    }
  }

  /// Permite reintentar después de un fallo.
  Future<void> retry() async {
    if (state != InitialSyncStatus.failed) {
      return;
    }

    await start();
  }
}
