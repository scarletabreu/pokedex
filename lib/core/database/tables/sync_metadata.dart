import 'package:drift/drift.dart';

class SyncMetadata extends Table {
  TextColumn get resourceKey => text()();

  DateTimeColumn get lastAttemptAt => dateTime().nullable()();

  DateTimeColumn get lastSuccessAt => dateTime().nullable()();

  TextColumn get status => text()();

  TextColumn get lastError => text().nullable()();

  IntColumn get failureCount => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {resourceKey};
}
