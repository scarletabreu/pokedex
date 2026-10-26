import 'package:drift/drift.dart';

class Abilities extends Table {
  IntColumn get id => integer()();

  TextColumn get name => text()();

  TextColumn get effectEs => text().nullable()();

  TextColumn get effectEn => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
