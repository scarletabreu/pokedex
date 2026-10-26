import 'package:drift/drift.dart';

class CatalogPages extends Table {
  TextColumn get pageKey => text()();

  IntColumn get offset => integer()();

  IntColumn get pageSize => integer()();

  IntColumn get returnedCount => integer()();

  DateTimeColumn get fetchedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {pageKey};
}
