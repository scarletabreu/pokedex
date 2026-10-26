import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/sync_metadata.dart';

part 'sync_metadata_dao.g.dart';

@DriftAccessor(tables: [SyncMetadata])
class SyncMetadataDao extends DatabaseAccessor<AppDatabase>
    with _$SyncMetadataDaoMixin {
  SyncMetadataDao(super.db);

  Stream<SyncMetadataData?> watch(String resourceKey) {
    return (select(
      syncMetadata,
    )..where((s) => s.resourceKey.equals(resourceKey))).watchSingleOrNull();
  }

  Future<void> save(SyncMetadataCompanion metadata) async {
    await into(syncMetadata).insertOnConflictUpdate(metadata);
  }
}
