import 'package:drift/drift.dart';

class Moves extends Table {
  IntColumn get id => integer()();

  TextColumn get name => text()();

  IntColumn get typeId => integer().nullable()();

  IntColumn get power => integer().nullable()();

  IntColumn get accuracy => integer().nullable()();

  IntColumn get pp => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
