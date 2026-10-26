import 'package:drift/drift.dart';

import 'types.dart';

class TypeEfficacy extends Table {
  IntColumn get attackingTypeId => integer().references(Types, #id)();

  IntColumn get defendingTypeId => integer().references(Types, #id)();

  IntColumn get damageFactor => integer()();

  @override
  Set<Column> get primaryKey => {attackingTypeId, defendingTypeId};
}
