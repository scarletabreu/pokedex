import 'package:drift/drift.dart';

class Achievements extends Table {
  TextColumn get id => text()();

  TextColumn get titleKey => text()();

  IntColumn get requiredScore => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
